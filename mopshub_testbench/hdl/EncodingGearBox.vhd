--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Nico Giangiacomi
--!               Kazuki Todome
--!               mtrovato
--!               Frans Schreuder
--! 
--!   Licensed under the Apache License, Version 2.0 (the "License");
--!   you may not use this file except in compliance with the License.
--!   You may obtain a copy of the License at
--!
--!       http://www.apache.org/licenses/LICENSE-2.0
--!
--!   Unless required by applicable law or agreed to in writing, software
--!   distributed under the License is distributed on an "AS IS" BASIS,
--!   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--!   See the License for the specific language governing permissions and
--!   limitations under the License.

----------------------------------------------------------------------------------
-- Company: University of Bologna
-- Engineer: Nico Giangiacomi
-- 
-- Create Date: 02/17/2020 03:36:26 PM
-- Module Name: EncodingGearBox - Behavioral
-- Project Name: FELIX
-- Target Devices: FELIX
-- Additional Comments: GearBox timing is mantained only 
--                      provided that DataInValid is always 
--                      asserted when ReadyOut = '1'
-- 
----------------------------------------------------------------------------------

-- Use standard library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity EncodingGearBox is
generic     (
            MAX_OUTPUT : integer := 8;
            MAX_INPUT : integer := 10;
            -- 8, 4, 2
            SUPPORT_OUTPUT: std_logic_vector(2 downto 0) := "111"; 
            -- 10, 8
            SUPPORT_INPUT: std_logic_vector(1 downto 0) := "11"
            );
port    ( 
            Reset                : in std_logic; -- Active high reset
            clk40                : in std_logic; -- BC clock

            ELinkData            : out std_logic_vector(MAX_OUTPUT-1 downto 0); 
            ElinkWidth           : in std_logic_vector( 1 downto 0); -- runtime configuration: 0:2, 1:4, 2:8, 
            MsbFirst             : in std_logic; --Default 1, make 0 to reverse the bit order
            ReverseOutputBits     : in std_logic; --Default 0, reverse the bits of the output Elink
            
            DataIn                         : in std_logic_vector(MAX_INPUT-1 downto 0); -- Input with set number of bits.
            --DataInValid             : in std_logic; --DataOut valid indicator
            InputWidth                 : in std_logic; --runtime configuration: 0:8, 1:10
            ReadyOut                    : out std_logic --m_axis_tready to AxiStreamToByte
        );
end EncodingGearBox;

architecture rtl of EncodingGearBox is

    signal shift    : std_logic_vector((MAX_OUTPUT+MAX_INPUT)-1 downto 0):= (others => '0');
    --constant zeros : std_logic_vector(2*MAX_INPUT-1 downto 0):= (others => '0');
    signal ReadyOut_i : std_logic := '1';
    signal cnt_s : natural range 0 to MAX_INPUT+MAX_OUTPUT-1:= MAX_INPUT;
    
    
        function reverse_any_vector (a: in std_logic_vector)
            return std_logic_vector is
            variable result: std_logic_vector(a'RANGE);
            alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
        begin
            for i in aa'RANGE loop
                result(i) := aa(i);
            end loop;
            return result;
        end; -- function reverse_any_vector

    
begin

    
    
    --! Gearbox for 8b, 10b input and 2b, 4b, 8b output. 
    shift_proc: process(clk40, Reset)
    variable DataIn_v: std_logic_vector(MAX_INPUT-1 downto 0);
    variable wIn : integer range 0 to MAX_INPUT := MAX_INPUT ; --Variable defined input width   
    variable wOut : integer range 0 to MAX_OUTPUT := MAX_OUTPUT; --Variable defined output width   
    variable CntOut : natural range 0 to MAX_INPUT+MAX_OUTPUT-1:= MAX_INPUT;
    variable CntIn  : natural range 0 to 4 := 0;
    begin
        if (Reset = '1') then
            ELinkData <= (others => '0');
            ReadyOut_i    <= '1';
            shift <= (others => '0');
            CntIn := 0;
            cnt_s <= 10;
            CntOut := 10;
        elsif rising_edge(clk40) then
            --8bit Elink
            if SUPPORT_OUTPUT(2) = '1' and MAX_OUTPUT >= 8 and ElinkWidth = "10" then
                wOut := 8;
            end if;
            --4bit Elink
            if SUPPORT_OUTPUT(1) = '1' and MAX_OUTPUT >= 4 and ElinkWidth = "01" then
                wOut := 4;
            end if;
            --2bit Elink
            if SUPPORT_OUTPUT(0) = '1' and MAX_OUTPUT >= 2 and ElinkWidth = "00" then
                wOut := 2;
            end if;
            
        --10bit input data
            if SUPPORT_INPUT(1) = '1' and MAX_INPUT >= 10 and InputWidth = '1' then
                wIn := 10;
                if CntIn < 4 then
                    CntIn := CntIn + 1;
                else
                    CntIn := 0;
                end if;
            end if;
            --8bit input data
            if SUPPORT_INPUT(0) = '1' and MAX_INPUT >= 8 and InputWidth = '0' then
                wIn := 8;
                if CntIn < 3 then
                    CntIn := CntIn + 1;
                else
                    CntIn := 0;
                end if;
            end if;
            
            cnt_s <= CntOut;
            
            if CntIn = 0 then
                CntOut := wIn;
                ReadyOut_i <= '1';
            else
                if CntOut-wOut >= wOut then
                    CntOut := CntOut - wOut;
                    ReadyOut_i <= '0';
                else
                    CntOut := CntOut + wIn - wOut;
                    ReadyOut_i <= '1';
                end if;
            end if;

            if(ReadyOut_i = '1') then
                DataIn_v := DataIn;
                if(MsbFirst = '0') then
                  if wIn = 10 then
                    for i in 9 downto 0 loop
                      DataIn_v(i) := DataIn_v(9-i);
                    end loop;
                  else
                    for i in 7 downto 0 loop
                      DataIn_v(i) := DataIn_v(9-i);
                    end loop;
                  end if;
                end if; 
                if wIn = 10 then
                    shift <= shift((MAX_OUTPUT+MAX_INPUT)-11 downto 0) & DataIn_v(9 downto 0);
                else
                    shift <= shift((MAX_OUTPUT+MAX_INPUT)-9 downto 0) & DataIn_v(7 downto 0);
                end if;
            end if;
            
            if wOut = 8 then
                for i in 7 downto 0 loop
                    if((ReverseOutputBits xor MsbFirst) = '0') then
                        ELinkData(7-i)        <= shift(cnt_s - (8-i));
                    else
                        ELinkData(i)        <= shift(cnt_s - (8-i));
                    end if;
                end loop;
            elsif wOut = 4 then
                for i in 3 downto 0 loop
                    if((ReverseOutputBits xor MsbFirst) = '0') then
                        ELinkData(3-i)        <= shift(cnt_s - (4-i));
                    else
                        ELinkData(i)        <= shift(cnt_s - (4-i));
                    end if;
                end loop;
            elsif wOut = 2 then
                for i in 1 downto 0 loop
                    if((ReverseOutputBits xor MsbFirst) = '0') then
                        ELinkData(1-i)        <= shift(cnt_s - (2-i));
                    else
                        ELinkData(i)        <= shift(cnt_s - (2-i));
                    end if;
                end loop;
            end if;
        end if;
    end process;
    
    ReadyOut <= ReadyOut_i;


end rtl;
