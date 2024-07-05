---------------------------------------------------------------------------------
--
--   Copyright 2017 - Rutherford Appleton Laboratory and University of Bristol
--
--   Licensed under the Apache License, Version 2.0 (the "License");
--   you may not use this file except in compliance with the License.
--   You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--   Unless required by applicable law or agreed to in writing, software
--   distributed under the License is distributed on an "AS IS" BASIS,
--   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--   See the License for the specific language governing permissions and
--   limitations under the License.
--
--                                     - - -
--
--   Additional information about ipbus-firmare and the list of ipbus-firmware
--   contacts are available at
--
--       https://ipbus.web.cern.ch/ipbus
--
---------------------------------------------------------------------------------


-- kc705_basex_infra
--
-- All board-specific stuff goes here.
--
-- Dave Newbold, June 2013

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library unisim;
use unisim.VComponents.all;
--use work.emac_hostbus_decl.all;
use work.ipbus.all;

entity ethernet_ipbus is
	port(
	    rst_eth:  out std_logic; -- ethernet startup reset (required!)
	    eth_locked: in std_logic;
	    mac_rx_data: in std_logic_vector(7 downto 0); -- AXI4 style MAC signals
        mac_rx_valid: in std_logic;
        mac_rx_last: in std_logic;
        mac_rx_error: in std_logic;
        mac_tx_data: out std_logic_vector(7 downto 0);
        mac_tx_valid: out std_logic;
        mac_tx_last: out std_logic;
        mac_tx_error: out std_logic;
        mac_tx_ready: in std_logic;
        clk125 : IN STD_LOGIC;			
        sysclk_p: in std_logic;
        sysclk_n: in std_logic;
       -- sysclk: in std_logic;
        clk_ipb_o: out std_logic; -- IPbus clock
        start_write_elink_dbg: out std_logic;
        start_read_elink_dbg : out std_logic;
        fifo_flush_dbg: out std_logic;
        irq_tra_sig: in std_logic;
        data_tra_downlink: in std_logic_vector(75 downto 0);
        data_rec_uplink: in std_logic_vector(75 downto 0);
        data_rec_ethernet: out std_logic_vector(75 downto 0);
        leds: out std_logic_vector(7 downto 0); -- status LEDs
        dip_sw: in std_logic_vector(3 downto 0) -- switches
	);

end ethernet_ipbus;

architecture rtl of ethernet_ipbus is
	signal sysclk,sysclk_out, clk_ipb, clk_ipb_i, clk_aux, locked, clk_locked, rst125, rst_ipb, rst_ipb_ctrl, rst_aux, onehz, pkt:std_logic; --
	signal led_p: std_logic_vector(0 downto 0);
	signal mac_addr: std_logic_vector(47 downto 0);
	signal ip_addr: std_logic_vector(31 downto 0);  
	signal ipb_in:   ipb_rbus; -- ipbus
	signal ipb_out:  ipb_wbus;
	signal userled:  std_logic;
	signal nuke:  std_logic; -- The signal of doom
	signal soft_rst:  std_logic; -- The signal of lesser doom
begin

	ibuf: IBUFDS
		port map(
			i => sysclk_p,
			ib => sysclk_n,
			o => sysclk
		);

   BUFG_inst : BUFG
   port map (
      O => sysclk_out, -- 1-bit output: Clock output.
      I => sysclk  -- 1-bit input: Clock input.
   );

--	DCM clock generation for internal bus, ethernet
	clocks: entity work.clocks_us_serdes
		generic map(
			CLK_AUX_FREQ => 40.0 --CLK_AUX_FREQ
		)
		port map(
			clki_fr => sysclk_out,
			clki_125 => clk125,
			clko_ipb => clk_ipb_i,
			clko_aux => clk_aux,
			eth_locked => eth_locked,
			locked => clk_locked,
			nuke => nuke,
			soft_rst => soft_rst,
			rsto_125 => rst125,
			rsto_ipb => rst_ipb,
			rsto_eth => rst_eth,
			rsto_ipb_ctrl => rst_ipb_ctrl,
			rsto_aux => rst_aux,
			onehz => onehz
		);
	clk_ipb_o <= clk_ipb_i;
	locked <= clk_locked and eth_locked;
	clk_ipb <= clk_ipb_i; -- Best to align delta delays on all clocks for simulation
	mac_addr <= X"020ddba1151" & dip_sw; -- Careful here, arbitrary addresses do not always work
  ip_addr <= X"c0a8c81" & dip_sw; -- 192.168.200.16+n
  --ip_addr <= X"84c36819"; -- 132.195.104.25 -- for Uni Wuppertal IP netmask: 255.255.248.0
  
  leds(7 downto 2) <= "00000" & userled;
  
  
	stretch: entity work.led_stretcher
		generic map(
			WIDTH => 1
		)
		port map(
			clk => clk125,
			d(0) => pkt,
			q => led_p
		);

	leds(1 downto 0) <= (led_p(0), locked and onehz);

	
-- ipbus control logic

	ipbus: entity work.ipbus_ctrl
		port map(
			mac_clk => clk125,
			rst_macclk => rst125,
			ipb_clk => clk_ipb,
			rst_ipb => rst_ipb_ctrl,
			mac_rx_data => mac_rx_data,
			mac_rx_valid => mac_rx_valid,
			mac_rx_last => mac_rx_last,
			mac_rx_error => mac_rx_error,
			mac_tx_data => mac_tx_data,
			mac_tx_valid => mac_tx_valid,
			mac_tx_last => mac_tx_last,
			mac_tx_error => mac_tx_error,
			mac_tx_ready => mac_tx_ready,
			ipb_out => ipb_out,
			ipb_in => ipb_in,
			mac_addr => mac_addr,
			ip_addr => ip_addr,
			pkt => pkt
		);
		
-- ipbus slaves live in the entity below, and can expose top-level ports
-- The ipbus fabric is instantiated within.

	payload: entity work.ethernet_payload
		port map(
			ipb_clk => clk_ipb,
			ipb_rst => rst_ipb,
			ipb_in => ipb_out,
			ipb_out => ipb_in,
			irq_tra_sig => irq_tra_sig,
			start_write_elink_dbg => start_write_elink_dbg,
			start_read_elink_dbg => start_read_elink_dbg,
			fifo_flush_dbg =>fifo_flush_dbg,
		  data_tra_downlink => data_tra_downlink,
		  data_rec_uplink => data_rec_uplink,
		  data_rec_ethernet=>data_rec_ethernet,
			nuke => nuke,
			soft_rst => soft_rst,
			userled => userled
		);
					
end rtl;
