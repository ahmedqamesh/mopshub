-- kc705_basex_infra
--
-- All board-specific stuff goes here.
--
-- Dave Newbold, June 2013

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library unisim;
use unisim.VComponents.all;
use work.emac_hostbus_decl.all;
use work.ipbus.all;

entity ethernet_emac_wrapper is port(
			clk125       : IN STD_LOGIC;
			eth_locked   : IN STD_LOGIC;
			rst_eth      : IN STD_LOGIC;
			rx_axis_mac_tdata  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			rx_axis_mac_tvalid : OUT STD_LOGIC;
			rx_axis_mac_tlast  : OUT STD_LOGIC;
			rx_axis_mac_tuser  : OUT STD_LOGIC;
			
			tx_axis_mac_tdata  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			tx_axis_mac_tvalid : IN STD_LOGIC;
			tx_axis_mac_tlast  : IN STD_LOGIC;
			tx_axis_mac_tuser  : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			tx_axis_mac_tready : OUT STD_LOGIC;
			gmii_txd   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			gmii_tx_en : OUT STD_LOGIC;
			gmii_tx_er : OUT STD_LOGIC;
			gmii_rxd   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			gmii_rx_dv : IN STD_LOGIC;
			gmii_rx_er : IN STD_LOGIC
			
		   
	);

end ethernet_emac_wrapper;

architecture rtl of ethernet_emac_wrapper is
        signal  hostbus_out: emac_hostbus_out;
        signal hostbus_in:   emac_hostbus_in := ('0', "00", "0000000000", X"00000000", '0', '0', '0');

	COMPONENT tri_mode_ethernet_mac_0
		PORT (
			gtx_clk : IN STD_LOGIC;
			glbl_rstn : IN STD_LOGIC;
			rx_axi_rstn : IN STD_LOGIC;
			tx_axi_rstn : IN STD_LOGIC;
			rx_statistics_vector : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
			rx_statistics_valid : OUT STD_LOGIC;
			rx_mac_aclk : OUT STD_LOGIC;
			rx_reset : OUT STD_LOGIC;
			rx_axis_mac_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			rx_axis_mac_tvalid : OUT STD_LOGIC;
			rx_axis_mac_tlast : OUT STD_LOGIC;
			rx_axis_mac_tuser : OUT STD_LOGIC;
			tx_ifg_delay : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			tx_statistics_vector : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			tx_statistics_valid : OUT STD_LOGIC;
			tx_mac_aclk : OUT STD_LOGIC;
			tx_reset : OUT STD_LOGIC;
			tx_axis_mac_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			tx_axis_mac_tvalid : IN STD_LOGIC;
			tx_axis_mac_tlast : IN STD_LOGIC;
			tx_axis_mac_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			tx_axis_mac_tready : OUT STD_LOGIC;
			pause_req : IN STD_LOGIC;
			pause_val : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			speedis100 : OUT STD_LOGIC;
			speedis10100 : OUT STD_LOGIC;
			gmii_txd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			gmii_tx_en : OUT STD_LOGIC;
			gmii_tx_er : OUT STD_LOGIC;
			gmii_rxd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			gmii_rx_dv : IN STD_LOGIC;
			gmii_rx_er : IN STD_LOGIC;
			rx_configuration_vector : IN STD_LOGIC_VECTOR(79 DOWNTO 0);
			tx_configuration_vector : IN STD_LOGIC_VECTOR(79 DOWNTO 0)
		);
	END COMPONENT;
	
	signal rstn: std_logic; 

begin	
	rstn <= not (rst_eth or not eth_locked);

	mac: tri_mode_ethernet_mac_0
		port map(
			gtx_clk => clk125,
			glbl_rstn => rstn,
			rx_axi_rstn => '1',
			tx_axi_rstn => '1',
			rx_statistics_vector => open,
			rx_statistics_valid => open,
			rx_mac_aclk => open,
			rx_reset => open,
			rx_axis_mac_tdata  => rx_axis_mac_tdata,
			rx_axis_mac_tvalid => rx_axis_mac_tvalid,
			rx_axis_mac_tlast  => rx_axis_mac_tlast,
			rx_axis_mac_tuser  => rx_axis_mac_tuser,
			tx_ifg_delay => X"00",
			tx_statistics_vector => open,
			tx_statistics_valid => open,
			tx_mac_aclk => open,
			tx_reset => open,
			tx_axis_mac_tdata    => tx_axis_mac_tdata,
			tx_axis_mac_tvalid   => tx_axis_mac_tvalid,
			tx_axis_mac_tlast    => tx_axis_mac_tlast,
			tx_axis_mac_tuser    => tx_axis_mac_tuser,
			tx_axis_mac_tready   => tx_axis_mac_tready,
			pause_req  => '0',
			pause_val  => X"0000",
			gmii_txd   => gmii_txd,
			gmii_tx_en => gmii_tx_en,
			gmii_tx_er => gmii_tx_er,
			gmii_rxd   => gmii_rxd,
			gmii_rx_dv => gmii_rx_dv,
			gmii_rx_er => gmii_rx_er,
			rx_configuration_vector => X"0000_0000_0000_0000_0812",
			tx_configuration_vector => X"0000_0000_0000_0000_0012"
		);
	hostbus_out.hostrddata <= (others => '0');
	hostbus_out.hostmiimrdy <= '0';	
	
end rtl;
