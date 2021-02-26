-----------------------------------------------------------------------------------------
-- Company: CERN
-- Engineer: Paris Moschovakos (paris.moschovakos@cern.ch) 
-- 
-- Copyright Notice/Copying Permission:
--    Copyright 2019 Paris Moschovakos
--
--    This file is part of ELMB++ firmware.
--
--    ELMB++ Satellite firmware is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    ELMB++ Satellite firmware is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with ELMB++ Satellite firmware.  If not, see <http://www.gnu.org/licenses/>.
-- 
-- Create Date: 01.04.2019
-- Design Name: ELMB++ Satellite
-- Module Name: elmbPpSatellite - RTL
-- Project Name:  ELMB++ - CERN firmware
-- Target Devices: Artix7 XC7A35T - CSG324
-- Tool Versions: Vivado 2018.3
-- Description: Data generator for the backend interface of ELMB++ Satellite

-- Dependencies: ELMB++ CERN Project
-- 
-- Changelog:
--
-----------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_generator is
    port(
        -------- General Interface ------
        clk_usr             : in  std_logic; -- write FIFO clk
        enable              : in  std_logic; -- should be used through VIO
        loop_en             : in  std_logic;
        done                : out std_logic; -- dbg
        -------- TX Interface -----------
        tx_fifo_pfull_gen   : in std_logic; --pfull from Tx FIFO
        dout                : out std_logic_vector(17 downto 0); -- generated data out to be fed to elinkFIFO
        wen                 : out std_logic  -- ena signal
    );
end data_generator;

architecture Behavioral of data_generator is

signal sel_cnt  : unsigned(2 downto 0)          := (others => '0');
signal state_o  : unsigned(2 downto 0)          := (others => '0');
signal wait_cnt : unsigned(2 downto 0)          := (others => '0');
signal max_cnt  : std_logic_vector(2 downto 0)  := (others => '0');
signal dout_i   : std_logic_vector(17 downto 0) := (others => '0');
signal wen_i    : std_logic := '0';

type stateType is (ST_IDLE, ST_WR, ST_WAIT_0, ST_SWITCH, ST_WAIT_1, ST_DONE, ST_RESET);
signal state : stateType := ST_IDLE;

begin

-- driving FSM to elink FIFO
generation_proc: process(clk_usr)
begin
    if(rising_edge(clk_usr))then
        if(enable = '0' AND loop_en = '0')then
            done        <= '0';
            wen_i       <= '0';
            wait_cnt    <= (others => '0');
            sel_cnt     <= (others => '0');
            state_o     <= "111";
            state       <= ST_IDLE;
        else
            case state is

            when ST_IDLE =>
                state_o     <= "000";
                sel_cnt     <= (others => '0');
                max_cnt     <= "011"; -- # of wen to send starting from 000 (011: 4 x wen)
                state       <= ST_WR;

            -- write to the e-link FIFO
            when ST_WR =>
                state_o     <= "001";
                wait_cnt    <= (others => '0');

                if(tx_fifo_pfull_gen = '0')then
                    wen_i   <= '1';
                    state   <= ST_WAIT_0;
                else
                    wen_i   <= '0';
                    state   <= ST_WR;
                end if;

            -- first wait state (3 cycles)
            when ST_WAIT_0 =>
                state_o     <= "010";
                wen_i       <= '0';
                wait_cnt    <= wait_cnt + 1;

                if(wait_cnt = "011")then
                    state <= ST_SWITCH;
                else
                    state <= ST_WAIT_0;  
                end if;

            -- increment the counter
            when ST_SWITCH =>
                state_o     <= "011";
                wait_cnt    <= (others => '0');
                
                if(sel_cnt = unsigned(max_cnt))then
                    sel_cnt <= sel_cnt;
                    state   <= ST_DONE;
                else
                    sel_cnt <= sel_cnt + 1;
                    state   <= ST_WAIT_1;
                end if;

            -- second wait state
            when ST_WAIT_1 =>
                state_o     <= "100";
                wait_cnt    <= wait_cnt + 1;

                if(wait_cnt = "011")then
                    state <= ST_WR;
                else
                    state <= ST_WAIT_1;  
                end if;

            -- done!
            when ST_DONE =>
                state_o <= "101";
                done    <= '1';
                if(loop_en = '1')then
                    state <= ST_RESET;
                end if;
                
            when ST_RESET =>
                state_o     <= "110";
                done        <= '0';
                wen_i       <= '0';
                wait_cnt    <= (others => '0');
                sel_cnt     <= (others => '0');
                state_o     <= "111";
                state       <= ST_IDLE;

            when others => state <= ST_IDLE;

            end case;
        end if;
    end if;
end process;

-- sel din process
sel_din_proc: process(clk_usr)
begin
    if(rising_edge(clk_usr))then
        if(enable = '1' OR loop_en = '1')then
            case sel_cnt is
            when "000"  => dout_i   <= "10" & x"00" & x"00";
            when "001"  => dout_i   <= "00" & x"DEAD";
            when "010"  => dout_i   <= "00" & x"BEEF";
            when "011"  => dout_i   <= "01" & x"00" & x"00";
            when "100"  => dout_i   <= (others => '0');
            when "101"  => dout_i   <= (others => '0');
            when "110"  => dout_i   <= (others => '0');
            when "111"  => dout_i   <= (others => '0');
            when others=> dout_i    <= (others => '0');
            end case;
        else
            dout_i <= (others => '0');
        end if;
    end if;
end process;

-- Synchronized output of the elink FIFO signals
pipe_proc: process(clk_usr)
begin
    if(rising_edge(clk_usr))then
        wen  <= wen_i;
        dout <= dout_i;
    end if;
end process;

end Behavioral;
