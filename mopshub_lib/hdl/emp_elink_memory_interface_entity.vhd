----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2021 12:05:07 PM
-- Design Name: 
-- Module Name: elink_memory_interface - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity emp_elink_memory_interface is
	generic(
		-- Constants:
		AXI_ADDR_WIDTH : integer                       := 32; -- width of the AXI address bus		
		--BASEADDR       : std_logic_vector(31 downto 0) := x"A2000000"; -- the register file's system base address1
		MEMORY_DEPTH   : integer                       := 70000
	);
	Port(
	    BASEADDR       : in std_logic_vector(31 downto 0); -- the register file's system base address1
		rst                : in  std_logic;
		uplink_clk_40MHz   : in  std_logic;
		downlink_clk_40MHz : in  std_logic;
		uplink_data        : in  std_logic_vector(229 downto 0); --!     * *FEC5 / 10.24 Gbps*: 230bit
		downlink_data      : out std_logic_vector(31 downto 0);
		intr_done          : out std_logic;
		-- AXI
		-- Clock and Reset
		axi_aclk           : in  std_logic;
		axi_aresetn        : in  std_logic;
		-- AXI Write Address Channel
		s_axi_awaddr       : in  std_logic_vector(AXI_ADDR_WIDTH - 1 downto 0);
		s_axi_awprot       : in  std_logic_vector(2 downto 0);
		s_axi_awvalid      : in  std_logic;
		s_axi_awready      : out std_logic;
		-- AXI Write Data Channel
		s_axi_wdata        : in  std_logic_vector(31 downto 0);
		s_axi_wstrb        : in  std_logic_vector(3 downto 0);
		s_axi_wvalid       : in  std_logic;
		s_axi_wready       : out std_logic;
		-- AXI Read Address Channel
		s_axi_araddr       : in  std_logic_vector(AXI_ADDR_WIDTH - 1 downto 0);
		s_axi_arprot       : in  std_logic_vector(2 downto 0);
		s_axi_arvalid      : in  std_logic;
		s_axi_arready      : out std_logic;
		-- AXI Read Data Channel
		s_axi_rdata        : out std_logic_vector(31 downto 0);
		s_axi_rresp        : out std_logic_vector(1 downto 0);
		s_axi_rvalid       : out std_logic;
		s_axi_rready       : in  std_logic;
		-- AXI Write Response Channel
		s_axi_bresp        : out std_logic_vector(1 downto 0);
		s_axi_bvalid       : out std_logic;
		s_axi_bready       : in  std_logic
	);
end emp_elink_memory_interface;

architecture Behavioral of emp_elink_memory_interface is

	component clk_mux_fake
		port(                           -- Clock in ports
			clk_downlink : in  std_logic;
			clk_in_sel   : in  std_logic;
			-- Clock out ports
			clk_mux      : out std_logic;
			-- Status and control signals
			reset        : in  std_logic;
			locked       : out std_logic;
			clk_uplink   : in  std_logic
		);
	end component;

	component emp_elink_mem_interface_regs
		generic(
			AXI_ADDR_WIDTH : integer                       := 32 -- width of the AXI address bus
			--BASEADDR       : std_logic_vector(31 downto 0) := x"A2000000" -- the register file's system base address
		);
		port(
		    BASEADDR       : std_logic_vector(31 downto 0); -- the register file's system base address
			-- Clock and Reset
			axi_aclk                        : in  std_logic;
			axi_aresetn                     : in  std_logic;
			-- AXI Write Address Channel
			s_axi_awaddr                    : in  std_logic_vector(AXI_ADDR_WIDTH - 1 downto 0);
			s_axi_awprot                    : in  std_logic_vector(2 downto 0);
			s_axi_awvalid                   : in  std_logic;
			s_axi_awready                   : out std_logic;
			-- AXI Write Data Channel
			s_axi_wdata                     : in  std_logic_vector(31 downto 0);
			s_axi_wstrb                     : in  std_logic_vector(3 downto 0);
			s_axi_wvalid                    : in  std_logic;
			s_axi_wready                    : out std_logic;
			-- AXI Read Address Channel
			s_axi_araddr                    : in  std_logic_vector(AXI_ADDR_WIDTH - 1 downto 0);
			s_axi_arprot                    : in  std_logic_vector(2 downto 0);
			s_axi_arvalid                   : in  std_logic;
			s_axi_arready                   : out std_logic;
			-- AXI Read Data Channel
			s_axi_rdata                     : out std_logic_vector(31 downto 0);
			s_axi_rresp                     : out std_logic_vector(1 downto 0);
			s_axi_rvalid                    : out std_logic;
			s_axi_rready                    : in  std_logic;
			-- AXI Write Response Channel
			s_axi_bresp                     : out std_logic_vector(1 downto 0);
			s_axi_bvalid                    : out std_logic;
			s_axi_bready                    : in  std_logic;
			-- User Ports          
			magic_strobe                    : out std_logic; -- Strobe signal for register 'magic' (pulsed when the register is read from the bus)
			magic_value                     : in  std_logic_vector(31 downto 0); -- Value of register 'magic', field 'value'
			command_strobe                  : out std_logic; -- Strobe signal for register 'command' (pulsed when the register is written from the bus)
			command_mem_read_write          : out std_logic_vector(0 downto 0); -- Value of register 'command', field 'mem_read_write'
			command_start_uplink_storage    : out std_logic_vector(0 downto 0); -- Value of register 'command', field 'start_uplink_storage'
			command_start_downlink_delivery : out std_logic_vector(0 downto 0); -- Value of register 'command', field 'start_downlink_delivery'
			command_reset                   : out std_logic_vector(0 downto 0); -- Value of register 'command', field 'reset'
			command_downlink_loop           : out std_logic_vector(0 downto 0); -- Value of register 'command', field 'downlink_loop'
			status_strobe                   : out std_logic; -- Strobe signal for register 'status' (pulsed when the register is read from the bus)
			status_done                     : in  std_logic_vector(0 downto 0); -- Value of register 'status', field 'done'
			mem_addr_strobe                 : out std_logic; -- Strobe signal for register 'mem_addr' (pulsed when the register is written from the bus)
			mem_addr_value                  : out std_logic_vector(31 downto 0); -- Value of register 'mem_addr', field 'value'
			mem_write_data_strobe           : out std_logic; -- Strobe signal for register 'mem_write_data' (pulsed when the register is written from the bus)
			mem_write_data_value            : out std_logic_vector(31 downto 0); -- Value of register 'mem_write_data', field 'value'
			mem_read_data_strobe            : out std_logic; -- Strobe signal for register 'mem_read_data' (pulsed when the register is read from the bus)
			mem_read_data_value             : in  std_logic_vector(31 downto 0); -- Value of register 'mem_read_data', field 'value'
			elink_group_sel_strobe          : out std_logic; -- Strobe signal for register 'elink_group_sel' (pulsed when the register is written from the bus)
			elink_group_sel_value           : out std_logic_vector(3 downto 0); -- Value of register 'elink_group_sel', field 'value'
			int_enable_strobe               : out std_logic; -- Strobe signal for register 'int_enable' (pulsed when the register is written from the bus)
			int_enable_value                : out std_logic_vector(0 downto 0) -- Value of register 'int_enable', field 'value'
		);
	end component;

	component emp_bram_gen is
		generic(
			constant MEMORY_DEPTH : integer := 280000;
			constant MEMORY_WIDTH : integer := 8
		);
		port(
			clka  : in  std_logic;
			clkb  : in  std_logic;
			ena   : in  std_logic;
			enb   : in  std_logic;
			wea   : in  std_logic;
			web   : in  std_logic;
			addra : in  std_logic_vector(31 downto 0);
			addrb : in  std_logic_vector(31 downto 0);
			dina  : in  std_logic_vector(MEMORY_WIDTH - 1 downto 0);
			dinb  : in  std_logic_vector(MEMORY_WIDTH - 1 downto 0);
			douta : out std_logic_vector(MEMORY_WIDTH - 1 downto 0);
			doutb : out std_logic_vector(MEMORY_WIDTH - 1 downto 0)
		);
	end component;

	-- User signals:
	signal magic_strobe                    : std_logic;
	signal magic_value                     : std_logic_vector(31 downto 0);
	signal command_strobe                  : std_logic;
	signal command_mem_read_write          : std_logic_vector(0 downto 0);
	signal command_start_uplink_storage    : std_logic_vector(0 downto 0);
	signal command_start_downlink_delivery : std_logic_vector(0 downto 0);
	signal command_reset                   : std_logic_vector(0 downto 0);
	signal command_downlink_loop           : std_logic_vector(0 downto 0);
	signal status_strobe                   : std_logic;
	signal status_done                     : std_logic_vector(0 downto 0);
	signal mem_addr_strobe                 : std_logic;
	signal mem_addr_value                  : std_logic_vector(31 downto 0);
	signal mem_write_data_strobe           : std_logic;
	signal mem_write_data_value            : std_logic_vector(31 downto 0);
	signal mem_read_data_strobe            : std_logic;
	signal mem_read_data_value             : std_logic_vector(31 downto 0);
	signal elink_group_sel_strobe          : std_logic;
	signal elink_group_sel_value           : std_logic_vector(3 downto 0);
	signal int_enable_strobe               : std_logic;
	signal int_enable_value                : std_logic_vector(0 downto 0);

	signal mux_clk_s     : std_logic;
	signal clk_sel       : std_logic := '0';
	signal clk_sel_order : std_logic := '0';
	signal clk_lock_rdy  : std_logic;
	signal clk_rst       : std_logic := '0';

	signal addr_unsig                : unsigned(31 downto 0) := (others => '0');
	signal elink_group_sel_value_int : integer range 0 to 6  := 0;

	type fsm_state_t is (idle, uplink_wait_for_lock, downlink_wait_for_lock, uplink_receiving, downlink_sending, waiting_for_reset);
	--type fsm_state_t is (idle, uplink_receiving, downlink_sending, waiting_for_reset);
	signal fsm_state : fsm_state_t := idle;

	signal en_s, we_s        : std_logic;
	signal addr_s            : std_logic_vector(31 downto 0);
	signal upword_buff       : std_logic_vector(31 downto 0);
	signal downword_buff     : std_logic_vector(31 downto 0);
	signal downword_buff_tim : std_logic_vector(31 downto 0);

	signal command_start_uplink_storage_m1        : std_logic;
	signal command_start_uplink_storage_m2        : std_logic;
	signal command_start_uplink_storage_cdc       : std_logic;
	signal command_start_uplink_storage_strech    : std_logic;
	signal command_start_downlink_delivery_m1     : std_logic;
	signal command_start_downlink_delivery_m2     : std_logic;
	signal command_start_downlink_delivery_cdc    : std_logic;
	signal command_start_downlink_delivery_strech : std_logic;
	signal command_reset_m1                       : std_logic;
	signal command_reset_m2                       : std_logic;
	signal command_reset_cdc                      : std_logic;
	signal command_reset_strech                   : std_logic;
	signal status_done_m1                         : std_logic;
	signal status_done_m2                         : std_logic;
	signal status_done_cdc                        : std_logic;

	--	attribute mark_debug : string;
	--
	--		attribute mark_debug of clk_sel: signal is "true";
	--		attribute mark_debug of clk_sel_order: signal is "true";
	--		attribute mark_debug of clk_rst: signal is "true";
	--		attribute mark_debug of clk_lock_rdy: signal is "true";
	--
	--	attribute mark_debug of elink_group_sel_value_int : signal is "true";
	--	attribute mark_debug of fsm_state : signal is "true";
	--	attribute mark_debug of status_done_cdc : signal is "true";
	--	attribute mark_debug of command_start_uplink_storage_cdc : signal is "true";
	--	attribute mark_debug of command_start_downlink_delivery_cdc : signal is "true";
	--	attribute mark_debug of int_enable_value : signal is "true";
	--
	--	attribute mark_debug of upword_buff : signal is "true";
	--	attribute mark_debug of downword_buff_tim : signal is "true";
	--
	--	attribute mark_debug of addr_unsig : signal is "true";
	--	attribute mark_debug of en_s : signal is "true";
	--	attribute mark_debug of we_s : signal is "true";

begin

	-- 8 bits per elink @320MHz, 16 bits per elink @640MHz, 32 bits per elink @1280Mbps
	-- stores 32 bits (1 to 4 elinks) at time

	clk_mux_inst : clk_mux_fake
		port map(
			clk_downlink => downlink_clk_40MHz,
			clk_in_sel   => clk_sel,    -- '1' uplink
			-- Clock out ports  
			clk_mux      => mux_clk_s,
			-- Status and control signals                
			reset        => clk_rst,
			locked       => clk_lock_rdy,
			-- Clock in ports
			clk_uplink   => uplink_clk_40MHz
		);

	emp_elink_mem_interface_regs_inst : emp_elink_mem_interface_regs
		generic map(
			AXI_ADDR_WIDTH => AXI_ADDR_WIDTH
			--BASEADDR       => BASEADDR
		)
		port map(
		    BASEADDR       => BASEADDR,
			-- Clock and Reset
			axi_aclk                        => axi_aclk,
			axi_aresetn                     => axi_aresetn,
			-- AXI Write Address Channel
			s_axi_awaddr                    => s_axi_awaddr,
			s_axi_awprot                    => s_axi_awprot,
			s_axi_awvalid                   => s_axi_awvalid,
			s_axi_awready                   => s_axi_awready,
			-- AXI Write Data Channel
			s_axi_wdata                     => s_axi_wdata,
			s_axi_wstrb                     => s_axi_wstrb,
			s_axi_wvalid                    => s_axi_wvalid,
			s_axi_wready                    => s_axi_wready,
			-- AXI Read Address Channel
			s_axi_araddr                    => s_axi_araddr,
			s_axi_arprot                    => s_axi_arprot,
			s_axi_arvalid                   => s_axi_arvalid,
			s_axi_arready                   => s_axi_arready,
			-- AXI Read Data Channel
			s_axi_rdata                     => s_axi_rdata,
			s_axi_rresp                     => s_axi_rresp,
			s_axi_rvalid                    => s_axi_rvalid,
			s_axi_rready                    => s_axi_rready,
			-- AXI Write Response Channel
			s_axi_bresp                     => s_axi_bresp,
			s_axi_bvalid                    => s_axi_bvalid,
			s_axi_bready                    => s_axi_bready,
			-- User Ports  
			magic_strobe                    => magic_strobe,
			magic_value                     => magic_value,
			command_strobe                  => command_strobe,
			command_mem_read_write          => command_mem_read_write,
			command_start_uplink_storage    => command_start_uplink_storage,
			command_start_downlink_delivery => command_start_downlink_delivery,
			command_reset                   => command_reset,
			command_downlink_loop           => command_downlink_loop,
			status_strobe                   => status_strobe,
			status_done                     => status_done,
			mem_addr_strobe                 => mem_addr_strobe,
			mem_addr_value                  => mem_addr_value,
			mem_write_data_strobe           => mem_write_data_strobe,
			mem_write_data_value            => mem_write_data_value,
			mem_read_data_strobe            => mem_read_data_strobe,
			mem_read_data_value             => mem_read_data_value,
			elink_group_sel_strobe          => elink_group_sel_strobe,
			elink_group_sel_value           => elink_group_sel_value,
			int_enable_strobe               => int_enable_strobe,
			int_enable_value                => int_enable_value
		);
	magic_value <= x"736D656D";         -- smem in ascii

	elink_group_sel_value_int <= to_integer(unsigned(elink_group_sel_value));

	clk_change : process(uplink_clk_40MHz) is
		variable counter : integer range 0 to 10 := 10;
	begin
		if rising_edge(uplink_clk_40MHz) then

			if rst = '1' then
				counter := 10;
				clk_sel <= '0';
				clk_rst <= '1';
			else
				if clk_sel_order /= clk_sel then
					clk_rst <= '1';
					counter := 10;
				end if;

				if clk_rst = '1' then
					clk_sel <= clk_sel_order;
					counter := counter - 1;
					if counter = 0 then
						clk_rst <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;

	elink_transf_slow : process(mux_clk_s) is
	begin
		if rising_edge(mux_clk_s) then
			if rst = '1' or command_reset_cdc = '1' then
				fsm_state       <= idle;
				upword_buff     <= (others => '0');
				addr_unsig      <= (others => '0');
				en_s            <= '0';
				we_s            <= '0';
				status_done_cdc <= '0';
				clk_sel_order   <= '0';
			else

				downword_buff_tim <= downword_buff; -- to solve timing issue

				case fsm_state is
					when idle =>
						if command_start_uplink_storage_cdc = '1' then
							clk_sel_order <= '1';
							
							fsm_state     <= uplink_receiving;
							
						elsif command_start_downlink_delivery_cdc = '1' then
							clk_sel_order <= '0';
							fsm_state     <= downlink_sending;
						end if;

					when uplink_wait_for_lock =>
						if clk_lock_rdy = '1' then
							fsm_state <= uplink_receiving;
						end if;

					when downlink_wait_for_lock =>
						if clk_lock_rdy = '1' then
							fsm_state <= downlink_sending;
						end if;

					when uplink_receiving =>
						upword_buff <= uplink_data(elink_group_sel_value_int*32 + 31 downto elink_group_sel_value_int*32);
						en_s        <= '1';
						we_s        <= '1';
						addr_unsig  <= addr_unsig + 1;
            
						if addr_unsig = MEMORY_DEPTH - 1 then
							en_s            <= '0';
							we_s            <= '0';
							upword_buff     <= (others => '0');
							addr_unsig      <= (others => '0');
							status_done_cdc <= '1';
							
							fsm_state       <= waiting_for_reset;
						end if;

					when downlink_sending =>
						en_s          <= '1';
						we_s          <= '0';
						addr_unsig    <= addr_unsig + 1;
						downlink_data <= downword_buff_tim;

						if addr_unsig = MEMORY_DEPTH - 1 and command_downlink_loop(0) = '0' then
							en_s            <= '0';
							we_s            <= '0';
							downlink_data   <= (others => '0');
							addr_unsig      <= (others => '0');
							status_done_cdc <= '1';
							fsm_state       <= waiting_for_reset;
						elsif addr_unsig = MEMORY_DEPTH - 1 and command_downlink_loop(0) = '1' then -- start again
							addr_unsig <= (others => '0');
						end if;

					when waiting_for_reset =>
						-- waiting for reset

				end case;
			end if;
		end if;
	end process;

	intr_done <= status_done_cdc and int_enable_value(0); -- interrupt

	cdc_axi_2_fsm : process(mux_clk_s) is
	begin
		if rising_edge(mux_clk_s) then
			command_start_uplink_storage_m1  <= command_start_uplink_storage_strech;
			command_start_uplink_storage_m2  <= command_start_uplink_storage_m1;
			command_start_uplink_storage_cdc <= command_start_uplink_storage_m2;

			command_start_downlink_delivery_m1  <= command_start_downlink_delivery_strech;
			command_start_downlink_delivery_m2  <= command_start_downlink_delivery_m1;
			command_start_downlink_delivery_cdc <= command_start_downlink_delivery_m2;

			command_reset_m1  <= command_reset_strech;
			command_reset_m2  <= command_reset_m1;
			command_reset_cdc <= command_reset_m2;
		end if;
	end process;

	cdc_fsm_2_axi : process(axi_aclk) is
		variable command_start_uplink_storage_counter, command_start_downlink_delivery_counter, command_reset_counter : integer range 0 to 2 := 2;
	begin
		if rising_edge(axi_aclk) then
			status_done_m1 <= status_done_cdc; -- does not need streching because it's not a pulse
			status_done_m2 <= status_done_m1;
			status_done(0) <= status_done_m2;

			-- strech pulses for 2 clock cycles
			if command_start_uplink_storage(0) = '1' then
				command_start_uplink_storage_strech  <= '1';
				command_start_uplink_storage_counter := 2;
			elsif command_start_uplink_storage_counter > 0 then
				command_start_uplink_storage_strech  <= '1';
				command_start_uplink_storage_counter := command_start_uplink_storage_counter - 1;
			else
				command_start_uplink_storage_strech <= '0';
			end if;

			-- strech pulses for 2 clock cycles
			if command_start_downlink_delivery(0) = '1' then
				command_start_downlink_delivery_strech  <= '1';
				command_start_downlink_delivery_counter := 2;
			elsif command_start_downlink_delivery_counter > 0 then
				command_start_downlink_delivery_strech  <= '1';
				command_start_downlink_delivery_counter := command_start_downlink_delivery_counter - 1;
			else
				command_start_downlink_delivery_strech <= '0';
			end if;

			-- strech pulses for 2 clock cycles
			if command_reset(0) = '1' then
				command_reset_strech  <= '1';
				command_reset_counter := 2;
			elsif command_reset_counter > 0 then
				command_reset_strech  <= '1';
				command_reset_counter := command_reset_counter - 1;
			else
				command_reset_strech <= '0';
			end if;

		end if;
	end process;

	emp_bram_gen_inst : emp_bram_gen
		generic map(
			MEMORY_DEPTH => MEMORY_DEPTH,
			MEMORY_WIDTH => 32
		)
		port map(
			clka  => downlink_clk_40MHz,
			clkb  => axi_aclk,
			ena   => en_s,
			enb   => '1',
			wea   => we_s,
			web   => command_mem_read_write(0),
			addra => addr_s,
			addrb => mem_addr_value,
			dina  => upword_buff,
			dinb  => mem_write_data_value,
			douta => downword_buff,
			doutb => mem_read_data_value
		);

	addr_s <= std_logic_vector(addr_unsig);

end Behavioral;
