--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Julia Narevicius
--!               Israel Grayzman
--!               Fabrizio Alfonsi
--!               Nico Giangiacomi
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
--! Company:  University and INFN Bologna  
--! Engineer: Nico Giangiacomi
--! 
--! Create Date:    02/02/2020 
--! Module Name:    Encoder8b10b
--! Project Name:   FELIX
--! Project description: Wrapper for 8b10b encoder
----------------------------------------------------------------------------------
--! Use standard library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.centralRouter_package.all;

--! a wrap for 8b10b decoder and alignment
entity Encoder8b10b is
generic(
  GENERATE_FEI4B  : boolean := false;
  GENERATE_LCB_ENC : boolean := false -- DG @ UBC
  );
port ( 
    reset : in std_logic; --Active high reset
    clk40 : in std_logic; --BC clock for DataIn
    EnableIn : in std_logic;
    
    DataIn : in std_logic_vector(7 downto 0); --8b Data from AxiStreamtoByte
    DataInValid : in std_logic; -- Data validated by AxiStreamtoByte
    EOP_in : in std_logic; --End of Packet from AxiStreamtoByte
   
    toHostXoff : in std_logic; 
  
    readyIn    : in std_logic; --gearbox not ready
  
    readyOut : out std_logic; --m_axis_tready toward AxiStreamToByte 
    DataOut : out std_logic_vector(9 downto 0) --Towards GearBox
    
    );
end Encoder8b10b;

architecture Behavioral of Encoder8b10b is


signal toHostXoff_s : std_logic:= '0';

signal char_comma, char_SOP, char_EOP,char_SOB, char_EOB : std_logic_vector(7 downto 0);
signal isK    : std_logic;

signal data_te : std_logic_vector(7 downto 0); --data ready to be encoded



signal sendSOB, sendEOB: std_logic;
signal SOPSent, SendEOP: std_logic;
signal InsertIdle0,  InsertIdle1 : std_logic;
begin


GBT_mode: if (GENERATE_FEI4B = false and GENERATE_LCB_ENC = false) generate
    char_comma  <=   Kchar_comma;
    char_SOP    <=   Kchar_sop;
    char_EOP    <=   Kchar_eop;
    char_SOB    <=   Kchar_sob;
    char_EOB    <=   Kchar_eob;
end generate GBT_mode;

FEI4B: if (GENERATE_FEI4B) generate
    char_comma  <=   FEI4B_Kchar_comma;
    char_SOP    <=   FEI4B_Kchar_sop;
    char_EOP    <=   FEI4B_Kchar_eop;
    char_SOB    <=   x"00";
    char_EOB    <=   x"00";
end generate FEI4B;

-- DG: block below still configured for FEI4, only names were changed
LCB: if (GENERATE_FEI4B = false and GENERATE_LCB_ENC) generate
    char_comma  <=   LCB_Kchar_comma;
    char_SOP    <=   LCB_Kchar_sop;
    char_EOP    <=   LCB_Kchar_eop;
    char_SOB    <=  x"00";
    char_EOB    <=  x"00";
end generate LCB;

readyOut <= readyIn and (not sendSOB) and (not sendEOB) and (SOPSent) and (not SendEOP) and (not InsertIdle0) and (not InsertIdle1);

fromaxis_proc: process(clk40, EnableIn, char_comma, reset)
begin
    if EnableIn = '0' or reset = '1' then --asynchronous, not sure this is ok
        isK          <= '1';
        data_te      <= char_comma;
        sendSOB <= '0';
        sendEOB <= '0';
        SOPSent <= '0';
        SendEOP <= '0';
        InsertIdle0 <= '0';
        InsertIdle1 <= '0';
    elsif rising_edge(clk40) then
    
        if (toHostXoff = '1' and toHostXoff_s = '0' and GENERATE_FEI4B=false and GENERATE_LCB_ENC=false ) then --XOFF rising edge
            sendSOB    <= '1';
        end if;
        if (toHostXoff = '0' and toHostXoff_s = '1' and GENERATE_FEI4B=false and GENERATE_LCB_ENC=false ) then --XOFF rising edge
            sendEOB    <= '1';
        end if;
        toHostXoff_s <= toHostXoff;
        
        if readyIn = '1' then
            isK          <= '1';
            if sendSOB = '1' then
                data_te <= char_SOB;
                sendSOB <= '0';
            elsif sendEOB = '1' then
                data_te <= char_EOB;
                sendEOB <= '0';
            elsif SOPSent = '0' and DataInValid = '1' then --Start of package
                data_te <= char_SOP;
                SOPSent <= '1';
            elsif SendEOP = '1' then
                data_te <= char_EOP;
                SendEOP <= '0';
                InsertIdle0 <= '1';
            elsif InsertIdle0 = '1' then --After EOP insert 2 idles.
                data_te <= char_comma;
                InsertIdle0 <= '0';
                InsertIdle1 <= '1';
            elsif InsertIdle1 = '1' then
                data_te <= char_comma;
                SOPSent <= '0';
                InsertIdle1 <= '0';
            elsif DataInValid = '1' then
                data_te <= DataIn;
                isK          <= '0';
                if EOP_in = '1' then
                    SendEOP <= '1';
                end if;
            else
                data_te <= char_comma;
            end if;
        end if;
    end if;
end process;


-- 8b10b encoder
enc_8b10b_INST: entity work.enc_8b10b 
PORT MAP(
    reset  => reset,
    clk     => clk40,
    ena     => readyIn,
    --enaFall : in std_logic ;
    --SBYTECLK : in std_logic ;    -- Master synchronous send byte clock 
    KI     => isK,
    datain => data_te,
    dataout => DataOut);

end Behavioral;

