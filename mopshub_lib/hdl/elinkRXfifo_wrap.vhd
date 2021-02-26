----------------------------------------------------------------------------------
-- Company: NTU Athens - BNL
-- Engineer: Christos Bakalis (christos.bakalis@cern.ch) 
-- 
-- Copyright Notice/Copying Permission:
--    Copyright 2018 Christos Bakalis
--
--    This file is part of the SCA_eXtension_firmware (SCX).
--
--    SCX is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    SCX is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with SCX.  If not, see <http://www.gnu.org/licenses/>.
--  
-- Create Date: 20.08.2018 17:59:25
-- Design Name: Elink RX-side FIFO Wrapper
-- Module Name: elinkRXfifo_wrap - RTL
-- Project Name: SCX
-- Target Devices: Xilinx 7-Series
-- Tool Versions: Vivado 2018.2
-- Description: Wrapper for the upstream FIFO
--
-- Dependencies: FELIX E-link/central router modules
-- 
-- Changelog:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.centralRouter_package.all;

entity elinkRXfifo_wrap is
    generic(elinkEncoding : std_logic_vector (1 downto 0) := "01");
    port(
        -----------------------------
        ------ General Interface ---- 
        bitClk          : in  std_logic;
        rst             : in  std_logic;
        inhibit         : in  std_logic;
        flush_fifo      : in  std_logic;
        -----------------------------
        ---- EPROC_IN2 Interface ----
        din             : in  std_logic_vector(9 downto 0);
        din_rdy         : in  std_logic;
        ----------------------------
        --- User Logic Interface ---
        rd_clk_elink    : in  std_logic;
        rd_en_elink     : in  std_logic;
        empty_elink     : out std_logic;
        full_elink      : out std_logic;
        dout_elink      : out std_logic_vector(9 downto 0)
    );
end elinkRXfifo_wrap;

architecture RTL of elinkRXfifo_wrap is

component upstreamFIFO
    port (
        rst         : in  std_logic;
        wr_clk      : in  std_logic;
        rd_clk      : in  std_logic;
        din         : in  std_logic_vector(9 downto 0);
        wr_en       : in  std_logic;
        rd_en       : in  std_logic;
        dout        : out std_logic_vector(9 downto 0);
        full        : out std_logic;
        empty       : out std_logic;
        wr_rst_busy : out std_logic;
        rd_rst_busy : out std_logic
    );
end component;

    signal wr_en            : std_logic := '0';
    signal flag_pack        : std_logic := '0';
    signal wr_en_fifo       : std_logic := '0';    
    signal empty_elink_i    : std_logic := '0';
    signal din_fifo         : std_logic_vector(9 downto 0) := (others => '0');
    signal din_i            : std_logic_vector(9 downto 0) := (others => '0');
    
-- debugging
component ila_overview
    port(
       clk     : in std_logic;
       probe0  : in std_logic_vector(63 downto 0)
    );
end component;

-- for reference. do not uncomment
--constant Kchar_comma  : std_logic_vector (7 downto 0) := "10111100"; -- K28.5
--constant Kchar_eop    : std_logic_vector (7 downto 0) := "11011100"; -- K28.6
--constant Kchar_sop    : std_logic_vector (7 downto 0) := "00111100"; -- K28.1
--constant Kchar_sob    : std_logic_vector (7 downto 0) := "01011100"; -- K28.2
--constant Kchar_eob    : std_logic_vector (7 downto 0) := "01111100"; -- K28.3

--    attribute mark_debug                    : string;
--    attribute mark_debug of din             : signal is "true";
--    attribute mark_debug of din_rdy         : signal is "true";
--    attribute mark_debug of rd_en_elink     : signal is "true";
--    attribute mark_debug of empty_elink_i   : signal is "true";
--    attribute mark_debug of din_fifo        : signal is "true";
--    attribute mark_debug of wr_en_fifo      : signal is "true";
--    attribute mark_debug of flag_pack       : signal is "true";

    signal delim_end : std_logic_vector(7 downto 0) := (others => '0');
    signal delim_bgn : std_logic_vector(7 downto 0) := (others => '0');

begin

-- what to write into the FIFO?
wrFIFO_proc: process(bitClk)
begin
    if(rising_edge(bitClk))then
        if(rst = '1' or inhibit = '1')then
            wr_en       <= '0';
            flag_pack   <= '0';
        else
            if(wr_en = '1')then -- always make sure you write only once
                wr_en       <= '0';
                flag_pack   <= flag_pack;
            elsif(flag_pack = '1' and din_rdy = '1' and din(9 downto 8) = "11")then -- ignore commas
                wr_en       <= '0';
                flag_pack   <= flag_pack;
            elsif(flag_pack = '1' and din_rdy = '1' and din /= ("01" & delim_end))then -- 0xdc = 1101 1100 EOP (if 8b10b)
                wr_en       <= '1';
                flag_pack   <= '1';
            elsif(flag_pack = '1' and din_rdy = '1' and din = ("01" & delim_end))then  -- 0xdc = 1101 1100 (if 8b10b)
                wr_en       <= '1';
                flag_pack   <= '0'; -- EOP detected. drop the flag
            elsif(flag_pack = '0' and din_rdy = '1' and din = ("10" & delim_bgn))then --0x3c = 0011 1100 SOP (if 8b10b)
                wr_en       <= '1';
                flag_pack   <= '1'; -- SOP detected. raise the flag, write everything
            else
                wr_en       <= '0';
                flag_pack   <= flag_pack;
            end if;
        end if;
    end if;
end process;

-- din pipeline
din_pipe_proc: process(bitClk)
begin
    if(rising_edge(bitClk))then
        wr_en_fifo  <= wr_en;
        din_i       <= din;
        din_fifo    <= din_i;
    end if;
end process;

upstreamFIFO_inst: upstreamFIFO
    port map(
        rst         => flush_fifo,
        wr_clk      => bitClk,
        rd_clk      => rd_clk_elink,
        din         => din_fifo,
        wr_en       => wr_en_fifo,
        rd_en       => rd_en_elink,
        dout        => dout_elink,
        full        => full_elink,
        empty       => empty_elink_i,
        wr_rst_busy => open,
        rd_rst_busy => open
    );
  
  empty_elink   <= empty_elink_i;
  delim_bgn     <= HDLC_flag when elinkEncoding = "10" else Kchar_sop;
  delim_end     <= HDLC_flag when elinkEncoding = "10" else Kchar_eop;
  
--ila_RXfifo: ila_overview
--      port map(
--          clk                  => bitClk,
--          probe0(9 downto 0)   => din,
--          probe0(10)           => din_rdy,
--          probe0(11)           => rd_en_elink,
--          probe0(12)           => empty_elink_i,
--          probe0(22 downto 13) => din_fifo,
--          probe0(23)            => sel_din,
--          probe0(24)            => wr_en_fifo,
--          probe0(25)             => flag_pack,
--          probe0(63 downto 26) => (others => '0')
--      );

end RTL;
