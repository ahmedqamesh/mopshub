--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Julia Narevicius
--!               Israel Grayzman
--!               Fabrizio Alfonsi
--!               falfonsi
--!               Nico Giangiacomi
--!               Frans Schreuder
--!               Marius Wensing
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity EncoderHDLC is
    generic (
        HDLC_IDLE_STATE : std_logic_vector(7 downto 0) := (others=>'1'); --determine the HDLC line idle state. for EC: 0x7F, for IC: 0xFF
        SUPPORT_DELAY : boolean := false;
        DELAY_CYCLES : integer := 9					-- delay-time approx. (DELAY_CYCLES + 1) * 100 ns
    );
    port (
        clk40 : in std_logic;
        rst : in  std_logic;
        
        EnableIn : in std_logic;
        EnableDelay : in std_logic := '0';

        DataIn : in std_logic_vector(7 downto 0);
        DataInValid : in std_logic;
        EOP_in : in std_logic;
        readyOut : out std_logic;

        DataOut : out std_logic_vector(1 downto 0)
    );
end EncoderHDLC;

architecture rtl of EncoderHDLC is
	signal EnableIn_i : std_logic;
	signal EnableDelay_i : std_logic;
	signal DataIn_i : std_logic_vector(7 downto 0);
	signal DataInValid_i : std_logic;
	signal EOP_in_i : std_logic;
	signal readyOut_i : std_logic;
	signal delay_cnt : integer range 0 to DELAY_CYCLES-1;
	signal datasr : std_logic_vector(8 downto 0) := '1' & HDLC_IDLE_STATE;
	signal datacnt : integer range 0 to 9 := 8;
	signal dataload : std_logic := '0';
	signal datanew : std_logic_vector(7 downto 0) := HDLC_IDLE_STATE;
	signal stuffing : std_logic := '0';
	signal stuffing_next : std_logic := '0';
	signal onecnt : integer range 0 to 7 := 0;
	type fsm_t is (IDLE, DELIM1, DATA, DELIM2, DELAY);
	signal Z : fsm_t := IDLE;
	signal DataOut_i : std_logic_vector(1 downto 0) := "00";

	attribute MARK_DEBUG : string;
	attribute DONT_TOUCH : string;
	attribute MARK_DEBUG of EnableIn_i, DataIn_i, DataInValid_i, EOP_in_i, readyOut_i, datasr, datacnt, dataload, datanew, stuffing, stuffing_next, onecnt, Z, DataOut_i : signal is "true";
	attribute DONT_TOUCH of EnableIn_i, DataIn_i, DataInValid_i, EOP_in_i, readyOut_i, datasr, datacnt, dataload, datanew, stuffing, stuffing_next, onecnt, Z, DataOut_i : signal is "true";
begin

-- for debugging
EnableIn_i <= EnableIn;
EnableDelay_i <= EnableDelay when SUPPORT_DELAY else '0';
DataIn_i <= DataIn;
DataInValid_i <= DataInValid;
EOP_in_i <= EOP_in;
readyOut <= readyOut_i;

process (clk40, rst) begin
	if rst = '1' then
		Z <= IDLE;
		datanew <= HDLC_IDLE_STATE;
		stuffing <= '0';
		stuffing_next <= '0';
	else
		if rising_edge(clk40) then
			if dataload = '1' then
				stuffing <= stuffing_next;
				case Z is
					when IDLE =>
						datanew <= HDLC_IDLE_STATE;
						stuffing_next <= '0';
						if (DataInValid_i = '1') and (EnableIn_i = '1') then
							if (EnableDelay_i = '1') and (DataIn_i = x"FF") and (EOP_in_i = '1') then
								delay_cnt <= DELAY_CYCLES-1;
								Z <= DELAY;
							else
								Z <= DELIM1;
							end if;
						end if;

					when DELIM1 =>
						datanew <= x"7E";
						stuffing_next <= '0';
						Z <= DATA;

					when DATA =>
						datanew <= DataIn_i;
						stuffing_next <= '1';
						if EOP_in_i = '1' then
							Z <= DELIM2;
						end if;

					when DELIM2 =>
						datanew <= x"7E";
						stuffing_next <= '0';
						if (DataInValid_i = '1') and (EnableIn_i = '1') then
							if (EnableDelay_i = '1') and (DataIn_i = x"FF") and (EOP_in_i = '1') then
								delay_cnt <= DELAY_CYCLES-1;
								Z <= DELAY;
							else
								Z <= DELIM1;
							end if;
						else
							Z <= IDLE;
						end if;

					when DELAY =>
						datanew <= HDLC_IDLE_STATE;
						if delay_cnt > 0 then
							delay_cnt <= delay_cnt - 1;
						else
							Z <= IDLE;
						end if;
				end case;
			end if;
		end if;
	end if;
end process;

-- only stuff when inside data block
readyOut_i <= '1' when ((Z = DATA) and (dataload = '1')) or 
                       ((Z = DELAY) and (dataload = '1') and (delay_cnt = 0)) else
              '0';

process (clk40, rst) begin
	if rst = '1' then
		datacnt <= 8;
		datasr <= '1' & HDLC_IDLE_STATE;
		dataload <= '0';
		onecnt <= 0;
	else
		if rising_edge(clk40) then
			-- by default we don't load data from upstream
			dataload <= '0';

			-- shift out data (including stuffing)
			if stuffing = '1' then
				-- depending on how many ones in a row we have to stuff
				if onecnt = 5 then
					if datasr(0) = '1' then
						onecnt <= 1;
					else
						onecnt <= 0;
					end if;
					DataOut_i <= datasr(0) & '0';
					if datacnt = 2 then
						datacnt <= 9;
						datasr <= datanew & datasr(1);
						dataload <= '1';
                    elsif datacnt = 1 then
                        datacnt <= 8;
                        datasr <= '0' & datanew;
                        dataload <= '1';
					else
						datacnt <= datacnt - 1;
						datasr <= "0" & datasr(8 downto 1);
					end if;

				elsif (onecnt = 4) and datasr(0) = '1' then
					onecnt <= 0;
					DataOut_i <= '0' & datasr(0);

					if datacnt = 2 then
						datacnt <= 9;
						datasr <= datanew & datasr(1);
						dataload <= '1';
                    elsif datacnt = 1 then
                        datacnt <= 8;
                        datasr <= '0' & datanew;
                        dataload <= '1';
					else
						datacnt <= datacnt - 1;
						datasr <= "0" & datasr(8 downto 1);
					end if;
				else
					-- shift out data
					DataOut_i <= datasr(1 downto 0);

					-- count ones
					if datasr(1 downto 0) = "11" then
						onecnt <= onecnt + 2;
					elsif datasr(1) = '1' then
						onecnt <= 1;
					else
						onecnt <= 0;
					end if;

					-- load new data if required
					if datacnt = 2 then
						datacnt <= 8;
						datasr <= '0' & datanew;
						dataload <= '1';
					elsif datacnt = 3 then
						datacnt <= 9;
						datasr <= datanew & datasr(2);
						dataload <= '1';
					else
						datacnt <= datacnt - 2;
						datasr <= "00" & datasr(8 downto 2);
					end if;
				end if;
			else
				onecnt <= 0;		-- if we are not stuffing we can reset this counter

				-- simply take the lowest two bits from the shift register
				DataOut_i <= datasr(1 downto 0);

				-- can we get new data?
				if datacnt = 2 then
					datacnt <= 8;
					datasr <= '0' & datanew;
					dataload <= '1';
				elsif datacnt = 3 then
					datacnt <= 9;
					datasr <= datanew & datasr(2);
					dataload <= '1';
				else
					datacnt <= datacnt - 2;
					datasr <= "00" & datasr(8 downto 2);
				end if;
			end if;
		end if;
	end if;
end process;

DataOut <= DataOut_i(0) & DataOut_i(1);

end architecture;