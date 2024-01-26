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


-- ipbus_example
--
-- selection of different IPBus slaves without actual function,
-- just for performance evaluation of the IPbus/uhal system
--
-- Kristian Harder, March 2014
-- based on code by Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.all;
use work.ipbus_reg_types.all;
use work.ipbus_decode_ipbus_mopshub.all;

entity ethernet_payload is
	port(
		ipb_clk: in std_logic;
		ipb_rst: in std_logic;
		ipb_in: in ipb_wbus;
		ipb_out: out ipb_rbus;
    start_write_elink_dbg: out std_logic;
    start_read_elink_dbg: out std_logic;
    fifo_flush_dbg: out std_logic;
    irq_tra_sig: in std_logic;
    data_tra_downlink: in std_logic_vector(75 downto 0);
    data_rec_uplink: in std_logic_vector(75 downto 0);
    data_rec_ethernet: out std_logic_vector(75 downto 0);
		status: in std_logic_vector(31 downto 0) := X"abcdfedc";
		nuke: out std_logic;
		soft_rst: out std_logic;
		userled: out std_logic
	);

end ethernet_payload;

architecture rtl of ethernet_payload is

	signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0); --signals from master to slave to request read and write operations.
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
	signal ctrl, stat: ipb_reg_v(0 downto 0);

begin

-- ipbus address decode
		
	fabric: entity work.ipbus_fabric_sel
    generic map(
    	NSLV => N_SLAVES,
    	SEL_WIDTH => IPBUS_SEL_WIDTH)
    port map(
      ipb_in => ipb_in,
      ipb_out => ipb_out,
      sel => ipbus_sel_ipbus_mopshub(ipb_in.ipb_addr),
      ipb_to_slaves => ipbw,
      ipb_from_slaves => ipbr
    );

-- Slave 0: id / rst reg

	slave0: entity work.ipbus_ctrlreg_v
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_CSR),
			ipbus_out => ipbr(N_SLV_CSR),
			d => stat,
			q => ctrl
		);
		
		stat(0) <= status;
		soft_rst <= ctrl(0)(0);
		nuke <= ctrl(0)(1);
		userled <= ctrl(0)(2);


	slave1: entity work.ipbus_reg_v
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_REG),
			ipbus_out => ipbr(N_SLV_REG),
			q => open
		);
		
	slave2: entity work.ethernet_SM
		port map(
			clk => ipb_clk,
			rst => ipb_rst,
			ipb_slave_in => ipbw(N_SLV_REG2),
			ipb_slave_out => ipbr(N_SLV_REG2),
	    data_tra_downlink => data_tra_downlink,
	    data_rec_uplink => data_rec_uplink,
	    irq_tra_sig => irq_tra_sig,
	    start_write_elink_dbg => start_write_elink_dbg,
      start_read_elink_dbg => start_read_elink_dbg,
      fifo_flush_dbg =>fifo_flush_dbg,
	    data_rec_ethernet=>data_rec_ethernet
		);
end rtl;
