--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Kazuki Todome
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
--! Module Name:    EncoderTTC
--! Project Name:   FELIX
--! Project description: Wrapper for 8b10b encoder
----------------------------------------------------------------------------------
--! Use standard library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.centralRouter_package.all;
use work.FELIX_package.all;
USE ieee.numeric_std.ALL;
--! a wrap for 8b10b decoder and alignment
entity EncoderTTC is
generic (
	MAX_OUTPUT : integer := 8
);
port ( 
    clk40 : in std_logic; --BC clock
    enable : in std_logic; --Active high enable
    TTCOption : in std_logic_vector(3 downto 0);
    TTCin       : in TTCin_data_type; 
    ElinkOut : out std_logic_vector((MAX_OUTPUT -1) downto 0) --ElinkElinkOut
    );
end EncoderTTC;

architecture Behavioral of EncoderTTC is

signal TTCin_r  : TTCin_data_type; -- use to sync the TTCin vector with the extended BCR pulse.
signal TTCin_r2 : std_logic; -- BCR signal. Use to extend the BCR two a pulse of 2 clocks for OCR.
signal TTCin_r9 : std_logic; -- broadcast bit#7 signal. When set, extend the BCR to 2 clocks pulse (OCR indication). 

type ElinkOut_TTC_case_type is array(6 downto 0) of std_logic_vector(7 downto 0);
signal ElinkOut_TTC_case : ElinkOut_TTC_case_type:= (others => (others => '0'));
signal TTCOption_i: std_logic_vector(2 downto 0):= (others => '0');



constant zeros8bit : std_logic_vector(7 downto 0) := x"00";
begin

	
	-------------------------------------------------------------------------------------------
	-- output data and busy according to the encoding settings
	-------------------------------------------------------------------------------------------
	dataOUTmux: entity work.MUX8_Nbit 
	generic map (N=>MAX_OUTPUT)
	port map( 
		data0    => ElinkOut_TTC_case(0)(MAX_OUTPUT-1 downto 0),
		data1    => ElinkOut_TTC_case(1)(MAX_OUTPUT-1 downto 0),
		data2    => ElinkOut_TTC_case(2)(MAX_OUTPUT-1 downto 0),
		data3    => ElinkOut_TTC_case(3)(MAX_OUTPUT-1 downto 0),
		data4    => ElinkOut_TTC_case(4)(MAX_OUTPUT-1 downto 0),
		data5    => ElinkOut_TTC_case(5)(MAX_OUTPUT-1 downto 0),
		data6    => zeros8bit(MAX_OUTPUT-1 downto 0),
		data7    => zeros8bit(MAX_OUTPUT-1 downto 0),
		sel      => TTCOption_i,
		data_out => ElinkOut(MAX_OUTPUT-1 downto 0)
	);
		
	output_select: process(clk40)
	begin
		if rising_edge(clk40) then
			-- synchronous reset
			if (enable = '0') then
				for i in 0 to 5 loop
					ElinkOut_TTC_case(i) 		<= (others => '0');
				end loop;
			else
				--IG:                             | B-chan  |  L1A    | 
				ElinkOut_TTC_case(0) <= "000000" & TTCin.Bchan &  TTCin.L1A;
				--IG:                        | B-chan     |  ECR   |  BCR  |  L1A    | 
				ElinkOut_TTC_case(1) <= x"0" & TTCin.Bchan & TTCin.ECR & TTCin.BCR & TTCin.L1A;
				--IG:                |  B-chan   | Brc_d4(3 downto 0) |  ECR     |  BCR       |  L1A    | 
				ElinkOut_TTC_case(2) <= TTCin.Bchan & TTCin.Brcst(3 downto 0) & TTCin.ECR & TTCin.BCR & TTCin.L1A;
				--IG:                |  L1A         | Soft Reset       | Test Pulse               |  ECR         |  BCR     |  L0A*       |  SCA             |  EC0R     | 
				ElinkOut_TTC_case(3) <= TTCin_r.L1A & TTCin_r.Brcst(1) & TTCin_r.ExtendedTestPulse & TTCin_r.ECR & TTCin_r2 & TTCin_r.L1A & TTCin_r.Brcst(3) & TTCin_r.ECR; --IG: duplicate L1A over L0A
				--IG:                          |  BCR    |  BCR     |  BCR     |  BCR    | 
				ElinkOut_TTC_case(4) <= x"0" & (TTCin.BCR & TTCin.BCR & TTCin.BCR & TTCin.BCR); -- expend BCR signal over the entire 25nSec (4x BCR bit)
				--IG:                              | BCR      |  BCRd   |
				ElinkOut_TTC_case(5) <= "000000" & (TTCin.BCR & TTCin_r.BCR);
				--IG:                |  L1A         | Latched Soft Reset | Test Pulse               |  ECR         |  BCR     |  L0A*       |  SCA             |  EC0R     | 
                ElinkOut_TTC_case(6) <= TTCin_r.L1A & TTCin_r.Brcst_latched(1) & TTCin_r.ExtendedTestPulse & TTCin_r.ECR & TTCin_r2 & TTCin_r.L1A & TTCin_r.Brcst(3) & TTCin_r.ECR;

				TTCOption_i<=TTCOption(2 downto 0);
			end if;
		end if;
	end process output_select;	

	--
	-- sample the TTCin vector to support OCR modification
	process(clk40)
	begin
			if rising_edge(clk40) then
					-- synchronous enable
					if (enable = '0') then
							TTCin_r     <= TTCin_zero;
					else
							TTCin_r     <= TTCin;
					end if;
			end if;
	end process;
	
	-- set the OCR indication
	process(clk40)
	begin
			if rising_edge(clk40) then
					-- synchronous enable
					if (enable = '0') then
							TTCin_r9      <= '0';
					-- OCR indication set
					elsif (TTCin.Brcst(5) = '1') then
							TTCin_r9      <= '1';
					-- clear the OCR indication when OCR indication set and BCR arrive
					elsif ((TTCin_r9 = '1') and (TTCin_r2 = '1')) then
							TTCin_r9      <= '0';
					-- keep the OCR indication value
					else
							TTCin_r9      <= TTCin_r9;
					end if;
			end if;
	end process;
	
	-- determine the BCR value
	process(clk40)
	begin
			if rising_edge(clk40) then
					-- synchronous enable
					if (enable = '0') then
							TTCin_r2      <= '0';
					-- BCR arrive
					elsif (TTCin.BCR = '1') then
							TTCin_r2      <= '1';
					-- OCR indication set and BCR arrive
					elsif ((TTCin_r9 = '1') and (TTCin_r2 = '1')) then
							TTCin_r2      <= '1';
					-- default value
					else
							TTCin_r2      <= '0';
					end if;
			end if;
	end process;

end Behavioral;

