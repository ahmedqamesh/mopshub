library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use work.ipbus.ALL;
use work.ipbus_decode_addr_table.ALL;
use work.ilk_fpga_package.all;
use work.emac_hostbus_decl.all;

entity top is
	generic (
		VERSION : std_logic_vector(31 downto 0) := (others => '0');
		GIT_HASH : std_logic_vector(159 downto 0) := (others => '0');
		DEFAULT_IPADDR : std_logic_vector(31 downto 0) := x"c0a80010";
		DEVMODE : boolean := false
	);
	port (
		-- master clocks
		pll_clk_p : in std_logic;
		pll_clk_n : in std_logic;
		clk50m2 : in std_logic;
		
		-- soft reset button
		soft_rst_n : in std_logic;

		-- backplane i2c + additional signals
		sda : inout std_logic_vector(19 downto 2);
		sck : inout std_logic_vector(19 downto 2);
		intn : in std_logic_vector(19 downto 2);
		ilock_fpga : out std_logic_vector(19 downto 2);

		-- can interface (direct)
		can_txd : out std_logic;
		can_rxd : in std_logic;

		-- can interface (through dedicated controller)
		can_clk : out std_logic;
		can_rst_n : out std_logic;
		can_sck : out std_logic;
		can_mosi : out std_logic;
		can_miso : in std_logic;
		can_cs_n : out std_logic;
		can_int_n : in std_logic;

		-- flash memory
		userflash_mosi : out std_logic;
		userflash_miso : in std_logic;
		userflash_sck : out std_logic;
		userflash_cs_n : out std_logic;
		userflash_wp_n : out std_logic;
		userflash_hold_n : out std_logic;

		-- ethernet phy
		eth_phy_rst_n : out std_logic;
		eth_phy_link_n : in std_logic;
		eth_phy_mdc : out std_logic;
		eth_phy_mdio : inout std_logic;
		eth_rmii_txd : out std_logic_vector(1 downto 0);
		eth_rmii_txen : out std_logic;
		eth_rmii_rxd : in std_logic_vector(1 downto 0);
		eth_rmii_rxdv : in std_logic;

		-- LEDs
		ld1_green : out std_logic;
		ld1_red : out std_logic;
		eth_led_link : out std_logic;
		eth_led_act : out std_logic;
		sysled : out std_logic;

		-- watchdog
		watchdog : out std_logic;

		-- port expander reset
		pe_reset_n : out std_logic;

		-- fpga status
		fpga_good : out std_logic;
		fpga_plllock : out std_logic;

		-- I2C bus to PLL chip on TE0712
		pll_scl : inout std_logic;
		pll_sda : inout std_logic;

		-- onewire bus to MAC eeprom
		onewire : inout std_logic;

		-- UART to/from monitoring
		uart_mon2ilk : in std_logic;
		uart_ilk2mon : out std_logic;

		-- emergency exit / continental interlocks
		emergency_exit_n : in std_logic;
		continental_interlockA_n : in std_logic;
		continental_interlockB_n : in std_logic;

		-- crate ID
		id : in std_logic_vector(3 downto 0)
	);
end top;

architecture rtl of top is
	-- init done from startup system
	signal scu_done : std_logic;

	-- system clocks and resets
	signal clketh : std_logic;
	signal clk50 : std_logic;
	signal rsteth : std_logic;
	signal rst50 : std_logic;
	
	-- MAC signals
	signal mac_tx_data : std_logic_vector(7 downto 0);
	signal mac_tx_valid : std_logic;
	signal mac_tx_last : std_logic;
	signal mac_tx_error : std_logic;
	signal mac_tx_ready : std_logic;
	signal mac_rx_data : std_logic_vector(7 downto 0);
	signal mac_rx_valid : std_logic;
	signal mac_rx_last : std_logic;
	signal mac_rx_error : std_logic;

	-- instruction memories
	signal imem_addr : std_logic_vector(15 downto 0);
	signal imem_writedata : std_logic_vector(15 downto 0);
	signal imem_readdata : std_logic_vector(15 downto 0);
	signal imem_write : std_logic;
	signal imem_parityerror : std_logic;

	-- synchronized continental and emergency interlocks
	signal contilk_a : std_logic;
	signal contilk_b : std_logic;
	signal emergency_exit : std_logic;

	-- syncronized crate id
	signal crate_id : std_logic_vector(3 downto 0);

	-- configuration
	signal system_config : system_config_t;
	signal slot_config : slot_config_array_t(2 to 19);
	signal config_done : std_logic;
	signal config_err : std_logic;

	-- slot read/write data and control
	signal slot_readdata : slv32_array_t(2 to 19);
	signal slot_writedata : slv32_array_t(2 to 19);
	signal slot_bypassdelay : std_logic_vector(2 to 19);
	signal slot_interlock : std_logic_vector(2 to 19);
	signal slot_run_config : std_logic;
	signal slot_read : std_logic;
	signal slot_write : std_logic;
	signal slot_cmdbusy : std_logic_vector(2 to 19);
	signal fsm_hold_req : std_logic;
	signal fsm_hold_ack : std_logic;

	-- crate-to-crate
	signal crate_writedata : std_logic_vector(7 downto 0);
	signal crate_readdata : slv8_array_t(0 to 15);

	-- matrix control
	signal matrix_start : std_logic;
	signal matrix_done : std_logic;
	
	-- configuration for slots
    signal slot_config_addr : std_logic_vector(15 downto 0);
    signal slot_config_writedata : std_logic_vector(15 downto 0);
    signal slot_config_write : std_logic;

	-- IPbus
	signal macaddr : std_logic_vector(47 downto 0);
	signal ipb_master_out : ipb_wbus;
    signal ipb_master_in : ipb_rbus;
    signal ipb_slaves_in : ipb_wbus_array(N_SLAVES-1 downto 0);
    signal ipb_slaves_out : ipb_rbus_array(N_SLAVES-1 downto 0);
    signal ipb_sel : std_logic_vector(IPBUS_SEL_WIDTH-1 downto 0);
    signal ipb_pkt : std_logic;

    -- FPGA dna
    signal fpga_dna : std_logic_vector(56 downto 0);
    
    -- watchdog handling
    signal watchdog_i : std_logic;
begin

------------------------------------
-- board startup control unit (SCU)
------------------------------------
scu_i: entity work.scu
	generic map (
		DEFAULT_IPADDR => DEFAULT_IPADDR
	)
	port map (
		pll_sda => pll_sda,
		pll_scl => pll_scl,
		onewire => onewire,
		system_config => system_config,
		init_done => scu_done
	);

sysled <= scu_done;

------------------------------------------
-- clock buffer for 50 MHz clock from PLL
------------------------------------------
pll_clk_buf: IBUFGDS
	port map (
		I => pll_clk_p,
		IB => pll_clk_n,
		O => clk50
	);

clketh <= clk50m2;

--------------------------------
-- synchronize resets to clocks
--------------------------------
rst50_sync: entity work.sync_reset
	generic map (
		STAGES => 2,
		ACTIVE_LOW => false
	)
	port map (
		clk => clk50,
		reset_in => not scu_done,
		reset_out => rst50
	);

rsteth_sync: entity work.sync_reset
	generic map (
		STAGES => 2,
		ACTIVE_LOW => false
	)
	port map (
		clk => clketh,
		reset_in => not scu_done,
		reset_out => rsteth
	);

-------------------------------------
-- synchronize interlocks & crate id
-------------------------------------

contilk_a_sync: entity work.sync_signal
    generic map(
        STAGES => 2
    )
	port map (
		clk => clk50,
		din => not continental_interlockA_n,
		dout => contilk_a
	);

contilk_b_sync: entity work.sync_signal
    generic map(
        STAGES => 2
    )
	port map (
		clk => clk50,
		din => not continental_interlockB_n,
		dout => contilk_b
	);

emergency_exit_sync: entity work.sync_signal
    generic map(
        STAGES => 2
    )
	port map (
		clk => clk50,
		din => not emergency_exit_n,
		dout => emergency_exit
	);

crate_id_sync: entity work.sync_vector
	generic map (
		STAGES => 2,
		WIDTH => 4
	)
	port map (
		clk => clk50,
		din => id,
		dout => crate_id
	);

-----------------------
-- Ethernet MAC layer
-----------------------
mac: entity work.eth_7s_rmii
	port map (
		clk50 => clk50,
		refclk => clketh,
		rst => rsteth,
		rmii_txd => eth_rmii_txd,
		rmii_tx_en => eth_rmii_txen,
		rmii_rxd => eth_rmii_rxd,
		rmii_rx_dv => eth_rmii_rxdv,
		tx_data => mac_tx_data,
		tx_valid => mac_tx_valid,
		tx_last => mac_tx_last,
		tx_error => mac_tx_error,
		tx_ready => mac_tx_ready,
		rx_data => mac_rx_data,
		rx_valid => mac_rx_valid,
		rx_last => mac_rx_last,
		rx_error => mac_rx_error,
		hostbus_in => ('0', "00", "0000000000", X"00000000", '0', '0', '0'),
		hostbus_out => open
	);

eth_phy_rst_n <= scu_done;
eth_led_link <= not eth_phy_link_n;
eth_led_act <= '0';
eth_phy_mdc <= '0';
eth_phy_mdio <= 'Z';

-----------------------
-- IPbus controller
-----------------------
ipbus: entity work.ipbus_ctrl
    port map (
        mac_clk => clk50,
        rst_macclk => rst50,
        ipb_clk => clk50,
        rst_ipb => rst50,
        mac_rx_data => mac_rx_data,
        mac_rx_valid => mac_rx_valid,
        mac_rx_last => mac_rx_last,
        mac_rx_error => mac_rx_error,
        mac_tx_data => mac_tx_data,
        mac_tx_valid => mac_tx_valid,
        mac_tx_last => mac_tx_last,
        mac_tx_error => mac_tx_error,
        mac_tx_ready => mac_tx_ready,
        ipb_out => ipb_master_out,
        ipb_in => ipb_master_in,
        --ipb_req => ipb_masters_req(0),
        --ipb_grant => ipb_masters_grant(0),
        mac_addr => system_config.mac_addr,
        ip_addr => system_config.ip_addr,
        RARP_select => '0',
        pkt => ipb_pkt
    );

--------------------------
-- IPbus fabric
--------------------------
ipb_sel <= ipbus_sel_addr_table(ipb_master_out.ipb_addr);
ipb_fabric: entity work.ipbus_fabric_sel
    generic map (
        NSLV => N_SLAVES,
        STROBE_GAP => false,
        SEL_WIDTH => IPBUS_SEL_WIDTH
    )
    port map (
        sel => ipb_sel,
        ipb_in => ipb_master_out,
        ipb_out => ipb_master_in,
        ipb_to_slaves => ipb_slaves_in,
        ipb_from_slaves => ipb_slaves_out
    );

-------------------------------
-- system information
-------------------------------
sysinfo: entity work.info
	generic map (
		F_CLK => 50000000,
		VERSION => VERSION,
		GIT_HASH => GIT_HASH,
		RESET_UPTIME => true,
		DEVMODE => DEVMODE
	)
	port map (
		clk => clk50,
		rst => rst50,
		crate_id => crate_id,
		fpga_dna => fpga_dna,
		ipb_slave_in => ipb_slaves_in(N_SLV_INFO),
		ipb_slave_out => ipb_slaves_out(N_SLV_INFO)
	);

-------------------------------
-- configuration loading
-------------------------------
init: entity work.flash_init
	generic map (
		F_CLK => 50000000,
		F_SCK => 25000000,
		DEVMODE => DEVMODE
	)
	port map (
		clk => clk50,
		rst => rst50,
		userflash_mosi => userflash_mosi,
		userflash_miso => userflash_miso,
		userflash_sck => userflash_sck,
		userflash_cs_n => userflash_cs_n,
		userflash_wp_n => userflash_wp_n,
		userflash_hold_n => userflash_hold_n,
		imem_addr => imem_addr,
		imem_writedata => imem_writedata,
		imem_readdata => imem_readdata,
		imem_write => imem_write,
		imem_parityerror => imem_parityerror,
		fsm_hold_req => fsm_hold_req,
		fsm_hold_ack => fsm_hold_ack,
		fpga_dna => fpga_dna,
		crate_id => crate_id,
		system_config => system_config,
		config_done => config_done,
		config_err => config_err,
		ipb_slave_in => ipb_slaves_in(N_SLV_INIT),
		ipb_slave_out => ipb_slaves_out(N_SLV_INIT)
	);

------------------------------
-- CAN
------------------------------
iocan_i: entity work.iocan
	port map (
		clk => clk50,
		rst => rst50,
		can_txd => can_txd,
		can_rxd => can_rxd,
		crate_readdata => crate_readdata,
		crate_writedata => crate_writedata,
		crate_read => slot_read,
		crate_write => slot_write,
		crate_id => crate_id,
		ipb_slave_in => ipb_slaves_in(N_SLV_IOCAN),
		ipb_slave_out => ipb_slaves_out(N_SLV_IOCAN)
	);

------------------------------
-- I/O slots
------------------------------
slot_config_generate: entity work.slot_config_mapping
	generic map (
		DEVMODE => DEVMODE
	)
	port map (
		clk => clk50,
		rst => rst50,
		config_addr => slot_config_addr,
		config_writedata => slot_config_writedata,
		config_write => slot_config_write,
		slot_config => slot_config,
		ipb_slave_in => ipb_slaves_in(N_SLV_CONFIG),
		ipb_slave_out => ipb_slaves_out(N_SLV_CONFIG)
	);

slots_generate: for I in 2 to 19 generate
	slot: entity work.ioslot
		generic map (
			F_CLK => 50000000,
			F_SCL => 400000,
			DEVMODE => DEVMODE
		)
		port map (
			clk => clk50,
			reset => rst50,
			scl => sck(I),
			sda => sda(I),
			int => intn(I),
			ilock => ilock_fpga(I),
			contilk_a => contilk_a,
			contilk_b => contilk_b,
			emergency_exit => emergency_exit,
			slot_config => slot_config(I),
			slot_readdata => slot_readdata(I),
			slot_writedata => slot_writedata(I),
			slot_bypassdelay => slot_bypassdelay(I),
			slot_run_config => slot_run_config,
			slot_read => slot_read,
			slot_write => slot_write,
			slot_cmdbusy => slot_cmdbusy(I),
			ipb_slave_in => ipb_slaves_in(N_SLV_SLOT2+I-2),
			ipb_slave_out => ipb_slaves_out(N_SLV_SLOT2+I-2)
		);
end generate;

-------------------------------
-- main interlock matrix
-------------------------------
imatrix: entity work.matrix
	port map (
		clk => clk50,
		rst => rst50,
		slot_readdata => slot_readdata,
		slot_writedata => slot_writedata,
		slot_delaybypass => slot_bypassdelay,
		crate_writedata => crate_writedata,
		crate_readdata => crate_readdata,
		contilk_a => contilk_a,
		contilk_b => contilk_b,
		imem_addr => imem_addr,
		imem_writedata => imem_writedata,
		imem_readdata => imem_readdata,
		imem_write => imem_write,
		imem_parityerror => imem_parityerror,
		config_addr => slot_config_addr,
		config_writedata => slot_config_writedata,
		config_write => slot_config_write,
		exec_start => matrix_start,
		exec_done => matrix_done
	);
	
--------------------
-- central FSM
--------------------
central_fsm: entity work.fsm
    generic map (
        F_CLK => 50000000
    )
    port map (
        clk => clk50,
        rst => rst50,
        cycle_config => slot_run_config,
        cycle_read => slot_read,
        cycle_calc => matrix_start,
        cycle_write => slot_write,
        hold_req => fsm_hold_req,
        hold_ack => fsm_hold_ack,
        slot_cmdbusy => slot_cmdbusy,
        matrix_done => matrix_done,
        watchdog => watchdog_i,
        cycle_freq => system_config.cycle_freq,
        ipb_slave_in => ipb_slaves_in(N_SLV_FSM),
        ipb_slave_out => ipb_slaves_out(N_SLV_FSM)
    );

------------------------
-- system monitor
------------------------
sysmon: entity work.ipbus_sysmon_x7
	port map (
		clk => clk50,
		rst => rst50,
		ipb_in => ipb_slaves_in(N_SLV_SYSMON),
		ipb_out => ipb_slaves_out(N_SLV_SYSMON)
	);
    
--------------------------------
-- output watchdog signal
--------------------------------
watchdog <= watchdog_i;
ld1_green <= watchdog_i;

---------------------
-- generate FPGA good
---------------------
fpga_plllock <= '1';
fpga_good <= '1' when DEVMODE else
             config_done and not config_err;
ld1_red <= not config_done or config_err or not scu_done;

---------------------
-- tie unused I/Os
---------------------
can_clk <= '0';
can_rst_n <= '0';
can_sck <= '0';
can_mosi <= '0';
can_cs_n <= '1';
pe_reset_n <= not rst50;
uart_ilk2mon <= uart_mon2ilk;           -- just loopback

end architecture;
