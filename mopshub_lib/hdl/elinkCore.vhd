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
-- Create Date: 05.03.2019
-- Design Name: ELMB++ Satellite
-- Module Name: elink_core - RTL
-- Project Name:  ELMB++ - CERN firmware
-- Target Devices: Artix7 XC7A35T - CSG324
-- Tool Versions: Vivado 2018.3
-- Description: elinkCore interface handles incoming and outcoming elink traffic

-- Dependencies: ELMB++ CERN Project
-- 
-- Changelog:
--
-----------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.centralRouter_package.all;

entity elink_core is
    generic(
        debug           : std_logic := '0'
    );
    port(
        --------------- Clock / Rst ----------------
        clk_usr                     : in  std_logic;                        -- User clock rd/wr fifo domain (requested by Piotr)
        clk_40                      : in  std_logic;                        -- 40Mhz e-link clock
        clk_80                      : in  std_logic;                        -- 80Mhz e-link clock (IG not needed)
        clk_160                     : in  std_logic;                        -- 160Mhz e-link clock
        rst                         : in  std_logic;                        -- reset the modules (not needed for initialization)
        -------------- Data Generator --------------
        data_gen_en                 : in  std_logic;                        -- enable generated data
        data_gen_done               : out std_logic;                        -- data generator done
        data_gen_loop               : in  std_logic;                        -- set continuous streaming on
        --------------- Rx Interface ---------------
        rx_elink                    : in  std_logic;                        -- 1-bit elink rx, must be connected to the input differential pin pair of FPGA
        rx_fifo_read_enable         : in  std_logic;                        -- rx fifo read enable
        rx_fifo_empty               : out std_logic;                        -- rx fifo empty
        rx_fifo_full                : out std_logic;                        -- rx fifo full
        rx_fifo_data_out            : out std_logic_vector(9 downto 0);     -- rx fifo 8b10b decoded data
        -------------- Tx Interface ---------------
        tx_fifo_write_enable        : in  std_logic;                        -- tx fifo write enable
        tx_fifo_data_in             : in  std_logic_vector(17 downto 0);    -- tx fifo data in
        tx_fifo_programmable_full   : out std_logic;                        -- tx fifo prog full
        tx_elink                    : out std_logic                         -- 1-bit elink tx, must be connected to the output differential pin pair of FPGA
     );
end elink_core;

architecture RTL of elink_core is

component FIFO2Elink
    generic (
        OutputDataRate  : integer := 80; -- 80 / 160 / 320 MHz
        elinkEncoding   : std_logic_vector (1 downto 0) := "01" -- 00-direct data / 01-8b10b encoding / 10-HDLC encoding 
        );
    port ( 
        clk40       : in  std_logic;
        clk80       : in  std_logic;
        clk160      : in  std_logic;
        clk320      : in  std_logic;
        rst         : in  std_logic;
        fifo_flush  : in  std_logic;
        swap_output : in  std_logic;
        reverse_tx  : in  std_logic;
        ------
        efifoWclk   : in  std_logic; 
        efifoDin    : in  std_logic_vector (17 downto 0);   -- [data_code,2bit][data,16bit]
        efifoWe     : in  std_logic;
        efifoPfull  : out std_logic;
        ------
        DATA1bitOUT : out std_logic; -- serialized output
        elink2bit   : out std_logic_vector (1 downto 0); -- 2 bits @ clk40, can interface 2-bit of GBT frame
        elink4bit   : out std_logic_vector (3 downto 0); -- 4 bits @ clk40, can interface 4-bit of GBT frame
        elink8bit   : out std_logic_vector (7 downto 0)  -- 8 bits @ clk40, can interface 8-bit of GBT frame
        ------
    );
end component;

component Elink2FIFO
    generic (
        InputDataRate       : integer := 80; -- 80 / 160 / 320 / 640 MHz
        elinkEncoding       : std_logic_vector (1 downto 0) := "01" -- 8b10b
        );
    port ( 
        clk40       : in  std_logic;
        clk80       : in  std_logic;
        clk160      : in  std_logic;    
        clk320      : in  std_logic;
        rst         : in  std_logic;
        fifo_flush  : in  std_logic;
        swap_input  : in  std_logic;
        inhibitRX   : in  std_logic;
        reverse_rx  : in  std_logic;
        wrEn_dbg    : out std_logic;
        din_dbg     : out std_logic_vector(9 downto 0);
        ------
        DATA1bitIN  : in  std_logic := '0';
        elink2bit   : in  std_logic_vector (1 downto 0) := (others=>'0'); -- 2 bits @ clk40, can interface 2-bit of GBT frame
        elink4bit   : in  std_logic_vector (3 downto 0) := (others=>'0'); -- 4 bits @ clk40, can interface 4-bit of GBT frame
        elink8bit   : in  std_logic_vector (7 downto 0) := (others=>'0'); -- 8 bits @ clk40, can interface 8-bit of GBT frame
        ------
        efifoRclk   : in  std_logic;
        efifoRe     : in  std_logic; 
        efifoEmpty  : out std_logic;
        efifoFull   : out std_logic;
        efifoDout   : out std_logic_vector(9 downto 0)
        ------
    );
end component;

component CDCC
generic(
    NUMBER_OF_BITS : integer := 8); -- number of signals to be synced
port(
    clk_src     : in  std_logic;                                        -- input clk (source clock)
    clk_dst     : in  std_logic;                                        -- input clk (dest clock)
    data_in     : in  std_logic_vector(NUMBER_OF_BITS - 1 downto 0);    -- data to be synced
    data_out_s  : out std_logic_vector(NUMBER_OF_BITS - 1 downto 0)     -- synced data to clk_dst
    );
end component;

component data_generator
    port(
        ------- General Interface --------
        clk_usr             : in  std_logic; -- write FIFO clk
        enable              : in  std_logic; -- should be used through VIO
        done                : out std_logic; -- dbg
        loop_en             : in  std_logic;
        --------- TX Interface -----------
        tx_fifo_pfull_gen   : in std_logic; --pfull from Tx FIFO
        dout                : out std_logic_vector(17 downto 0); -- generated data out to be fed to elinkFIFO
        wen                 : out std_logic  -- ena signal
    );
end component;

-- debug, control
component vioBackend
    port(
        ------ General Interface ----
        clk             : in  std_logic;    -- write FIFO clk
        probe_in0       : in  std_logic;    -- should be used through VIO
        probe_out0      : out std_logic     -- dbg
    );
end component;

component ila_overview is
    port(
        ------ DBG interface -----
        clk             : in std_logic;    --
        probe0          : in std_logic_vector(17 downto 0);
        probe1          : in std_logic;
        probe2          : in std_logic;
        probe3          : in std_logic;
        probe4          : in std_logic_vector(9 downto 0);
        probe5          : in std_logic;
        probe6          : in std_logic;
        probe7          : in std_logic;
        probe8          : in std_logic;
        probe9          : in std_logic
     );
end component;

-- General signals
    signal reset_elink_i        : std_logic := '0';
    signal reset_init_elink     : std_logic := '0';
    signal reset_external_elink : std_logic := '0';

-- Elink logic signals    
    signal rx_elink_i           : std_logic := '0';
    signal rx_fifo_rd_i         : std_logic := '0';
    signal rx_fifo_empty_i      : std_logic := '0';
    signal rx_fifo_full_i       : std_logic := '0';
    signal rx_fifo_dout_i       : std_logic_vector(9 downto 0) := (others => '0');
    
    signal tx_fifo_din_i        : std_logic_vector(17 downto 0) := (others => '0');
    signal tx_fifo_wr_i         : std_logic := '0';
    signal tx_fifo_pfull_i      : std_logic := '0';
    
-- X-elink Wrapper signals    
    signal fifo_flush_i : std_logic := '1';
    signal rst_i        : std_logic := '1';
    signal fifo_flush_s : std_logic := '1';
    signal rst_s        : std_logic := '1';
    signal cnt_init     : unsigned(5 downto 0) := (others => '0');
   
---                     ---
--- Reviewed up to here ---
---                     ---

-- data generator signals
    signal data_gen_en_i        : std_logic := '0';
    signal data_gen_done_i      : std_logic := '0';
    signal data_gen_loop_i      : std_logic := '0';

    signal tx_fifo_pfull_gen    : std_logic := '0';
    signal tx_fifo_wr_gen       : std_logic := '0';
    signal tx_fifo_din_gen      : std_logic_vector(17 downto 0) := (others => '0');
    
-- other debug signals
    signal drdy_raw_i           : std_logic := '0';
    signal din_raw_i            : std_logic_vector(9 downto 0) := (others => '0');
      
-- state_flow_signals
    type state_flowType is (ST_IDLE, ST_INIT_STAGE1, ST_INIT_STAGE2);
    signal state_flow           : state_flowType := ST_INIT_STAGE1;

    signal cnt_data             : unsigned(6 downto 0) := (others => '0');
    signal wait_cnt             : unsigned(1 downto 0) := (others => '0');
    
-- TODO: This should become relevant only when debug is set
    attribute mark_debug                            : string;
    attribute mark_debug of clk_40                  : signal is "TRUE";
    attribute mark_debug of reset_elink_i           : signal is "TRUE";
    attribute mark_debug of data_gen_en_i           : signal is "TRUE";
    attribute mark_debug of data_gen_done_i         : signal is "TRUE";
    attribute mark_debug of tx_fifo_din_i           : signal is "TRUE";
    attribute mark_debug of tx_fifo_write_enable    : signal is "TRUE";
    attribute mark_debug of rx_fifo_rd_i            : signal is "TRUE";
    attribute mark_debug of rx_fifo_dout_i          : signal is "TRUE";
    attribute mark_debug of rx_fifo_empty_i         : signal is "TRUE";
    attribute mark_debug of rx_elink_i              : signal is "TRUE";

begin

rx_elink_i  <= rx_elink;

elink_tx_inst: FIFO2Elink
    generic map(
        OutputDataRate  => 80,
        elinkEncoding   => "01")
    port map( 
        clk40       => clk_40,
        clk80       => clk_80,
        clk160      => clk_160,
        clk320      => '0',
        rst         => rst_s,
        fifo_flush  => fifo_flush_s,
        swap_output => '0',
        reverse_tx  => '0',
        ------
        efifoWclk   => clk_usr,
        efifoDin    => tx_fifo_din_i,
        efifoWe     => tx_fifo_wr_i,
        efifoPfull  => tx_fifo_pfull_i,
        ------
        DATA1bitOUT => tx_elink,
        elink2bit   => open,
        elink4bit   => open,
        elink8bit   => open
    );

elink_rx_inst: Elink2FIFO
    generic map(
        InputDataRate       => 80,
        elinkEncoding       => "01")
    port map( 
        clk40       => clk_40,
        clk80       => clk_80,
        clk160      => clk_160,
        clk320      => '0',
        rst         => rst_s,
        fifo_flush  => fifo_flush_s,
        swap_input  => '0',
        inhibitRX   => '0',
        reverse_rx  => '0',
        wrEn_dbg    => drdy_raw_i,
        din_dbg     => din_raw_i,
        ------
        DATA1bitIN  => rx_elink,
        elink2bit   => (others => '0'),
        elink4bit   => (others => '0'),
        elink8bit   => (others => '0'),
        ------
        efifoRclk   => clk_usr,
        efifoRe     => rx_fifo_read_enable,
        efifoEmpty  => rx_fifo_empty,
        efifoFull   => rx_fifo_full,
        efifoDout   => rx_fifo_data_out
        ------
    );

-- creates an internal reset pulse for initialization/reset
initRst_proc: process(clk_usr, rst)
begin
    if(rst = '1')then
        cnt_init        <= (others => '0');
        rst_i           <= '1';
        fifo_flush_i    <= '1';
    elsif(rising_edge(clk_usr))then
        if(cnt_init < "010000")then
            cnt_init        <= cnt_init + 1;
            rst_i           <= '1';
            fifo_flush_i    <= '1';
        elsif(cnt_init >= "010000" and cnt_init < "111111")then -- first release the flush signal
            cnt_init        <= cnt_init + 1; 
            rst_i           <= '1';
            fifo_flush_i    <= '0';
        elsif(cnt_init = "111111")then         -- remain in this state until reset by top
            cnt_init        <= cnt_init;
            rst_i           <= '0';
            fifo_flush_i    <= '0';
        else
            cnt_init        <= (others => '0');
            rst_i           <= '1';
            fifo_flush_i    <= '1';
        end if;
    end if; 
end process;

CDCC_inst: CDCC
generic map(
    NUMBER_OF_BITS => 2)
port map(
    clk_src         => clk_usr,
    clk_dst         => clk_40,
    data_in(0)      => rst_i,
    data_in(1)      => fifo_flush_i,
    data_out_s(0)   => rst_s,
    data_out_s(1)   => fifo_flush_s
);
    
data_generator_inst: data_generator
    port map(
        ------- General Interface -------
        clk_usr             => clk_usr,
        enable              => data_gen_en_i,
        done                => data_gen_done_i,
        loop_en             => data_gen_loop_i,
        tx_fifo_pfull_gen   => tx_fifo_pfull_gen,
        dout                => tx_fifo_din_gen,
        wen                 => tx_fifo_wr_gen
    );
    
data_gen_done   <= data_gen_done_i;
data_gen_en_i   <= data_gen_en;
data_gen_loop_i <= data_gen_loop;

-- Maybe make that multiplexer async? Probably not, I need the register in its output
gen_out_mux: process(clk_40)
begin

    if(rising_edge(clk_40))then
        if(data_gen_en='1')then
            -- data from generator
            tx_fifo_pfull_gen           <= tx_fifo_pfull_i;
            tx_fifo_din_i               <= tx_fifo_din_gen;
            tx_fifo_wr_i                <= tx_fifo_wr_gen;
        else
            -- external data
            tx_fifo_programmable_full   <= tx_fifo_pfull_i;
            tx_fifo_din_i               <= tx_fifo_data_in;
            tx_fifo_wr_i                <= tx_fifo_write_enable;
        end if;
    end if;
    
end process;

-- Reset elink core when initializing or by external source 
flowController_proc: process(clk_40)
begin
    
    if(rising_edge(clk_40))then
        if(reset_external_elink='1')then
            state_flow      <= ST_INIT_STAGE1;
        else 
            case state_flow is
                when ST_INIT_STAGE1 =>
                    reset_init_elink    <= '1';
                    cnt_data            <= (others => '0');
                    state_flow          <= ST_INIT_STAGE2;
                    
                when ST_INIT_STAGE2 =>                          -- Needs 2.025us to intialize all felix modules
                    reset_init_elink    <= '0';
                    cnt_data            <= cnt_data + 1;
                    if(cnt_data = 81)then
                        state_flow      <= ST_IDLE;
                    else
                        state_flow      <= ST_INIT_STAGE2;
                    end if;
                
                when ST_IDLE =>
                    state_flow          <= ST_IDLE;
            
                when others =>
                    reset_init_elink    <= '0';
                    state_flow          <= ST_IDLE;
            end case;
        end if;
    end if;
end process;

reset_external_elink    <= rst;
reset_elink_i           <= reset_external_elink OR reset_init_elink;

vioBackend_generate : if (debug = '1') generate 
vioBackend_inst: vioBackend
    port map(
        ------ General Interface ----
        clk             => clk_usr,
        probe_in0       => '0',
        probe_out0      => open
    );
end generate vioBackend_generate;

ila_overview_generate : if (debug = '1') generate  
ila_overview_inst: ila_overview
    port map (
        ------ DBG interface -----
        clk             => clk_usr,
        probe0          => tx_fifo_din_i,
        probe1          => tx_fifo_wr_i,
        probe2          => data_gen_en_i,
        probe3          => data_gen_loop_i,
        probe4          => rx_fifo_dout_i,
        probe5          => rx_fifo_empty_i,
        probe6          => reset_elink_i,
        probe7          => data_gen_done_i,
        probe8          => '0',
        probe9          => rx_elink_i
     );
end generate ila_overview_generate;

    
end RTL;
