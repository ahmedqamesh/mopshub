-- -----------------------------------------------------------------------------
-- 'emp_elink_mem_interface' Register Component
-- Revision: 46
-- -----------------------------------------------------------------------------
-- Generated on 2021-02-17 at 08:28 (UTC) by airhdl version 2021.02.1
-- -----------------------------------------------------------------------------
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
-- ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
-- POSSIBILITY OF SUCH DAMAGE.
-- -----------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY mopshub_lib;
USE mopshub_lib.emp_elink_mem_interface_regs_pkg.all;

ENTITY emp_elink_mem_interface_regs IS
   GENERIC( 
      AXI_ADDR_WIDTH : integer := 32      -- width of the AXI address bus
      --BASEADDR : std_logic_vector(31 downto 0) := x"A2000000" -- the register file's system base address
   );
   PORT( 
      BASEADDR                        : IN     std_logic_vector (31 DOWNTO 0);                  -- the register file's system base address
      -- Clock and Reset
      axi_aclk                        : IN     std_logic;
      axi_aresetn                     : IN     std_logic;
      -- AXI Write Address Channel
      s_axi_awaddr                    : IN     std_logic_vector (AXI_ADDR_WIDTH - 1 DOWNTO 0);
      s_axi_awprot                    : IN     std_logic_vector (2 DOWNTO 0);                   -- sigasi @suppress "Unused port"
      s_axi_awvalid                   : IN     std_logic;
      s_axi_awready                   : OUT    std_logic;
      -- AXI Write Data Channel
      s_axi_wdata                     : IN     std_logic_vector (31 DOWNTO 0);
      s_axi_wstrb                     : IN     std_logic_vector (3 DOWNTO 0);
      s_axi_wvalid                    : IN     std_logic;
      s_axi_wready                    : OUT    std_logic;
      -- AXI Read Address Channel
      s_axi_araddr                    : IN     std_logic_vector (AXI_ADDR_WIDTH - 1 DOWNTO 0);
      s_axi_arprot                    : IN     std_logic_vector (2 DOWNTO 0);                   -- sigasi @suppress "Unused port"
      s_axi_arvalid                   : IN     std_logic;
      s_axi_arready                   : OUT    std_logic;
      -- AXI Read Data Channel
      s_axi_rdata                     : OUT    std_logic_vector (31 DOWNTO 0);
      s_axi_rresp                     : OUT    std_logic_vector (1 DOWNTO 0);
      s_axi_rvalid                    : OUT    std_logic;
      s_axi_rready                    : IN     std_logic;
      -- AXI Write Response Channel
      s_axi_bresp                     : OUT    std_logic_vector (1 DOWNTO 0);
      s_axi_bvalid                    : OUT    std_logic;
      s_axi_bready                    : IN     std_logic;
      -- User Ports
      magic_strobe                    : OUT    std_logic;                                       -- Strobe signal for register 'magic' (pulsed when the register is read from the bus)
      magic_value                     : IN     std_logic_vector (31 DOWNTO 0);                  -- Value of register 'magic', field 'value'
      command_strobe                  : OUT    std_logic;                                       -- Strobe signal for register 'command' (pulsed when the register is written from the bus)
      command_mem_read_write          : OUT    std_logic_vector (0 DOWNTO 0);                   -- Value of register 'command', field 'mem_read_write'
      command_start_uplink_storage    : OUT    std_logic_vector (0 DOWNTO 0);                   -- Value of register 'command', field 'start_uplink_storage'
      command_start_downlink_delivery : OUT    std_logic_vector (0 DOWNTO 0);                   -- Value of register 'command', field 'start_downlink_delivery'
      command_reset                   : OUT    std_logic_vector (0 DOWNTO 0);                   -- Value of register 'command', field 'reset'
      command_downlink_loop           : OUT    std_logic_vector (0 DOWNTO 0);                   -- Value of register 'command', field 'downlink_loop'
      status_strobe                   : OUT    std_logic;                                       -- Strobe signal for register 'status' (pulsed when the register is read from the bus)
      status_done                     : IN     std_logic_vector (0 DOWNTO 0);                   -- Value of register 'status', field 'done'
      mem_addr_strobe                 : OUT    std_logic;                                       -- Strobe signal for register 'mem_addr' (pulsed when the register is written from the bus)
      mem_addr_value                  : OUT    std_logic_vector (31 DOWNTO 0);                  -- Value of register 'mem_addr', field 'value'
      mem_write_data_strobe           : OUT    std_logic;                                       -- Strobe signal for register 'mem_write_data' (pulsed when the register is written from the bus)
      mem_write_data_value            : OUT    std_logic_vector (31 DOWNTO 0);                  -- Value of register 'mem_write_data', field 'value'
      mem_read_data_strobe            : OUT    std_logic;                                       -- Strobe signal for register 'mem_read_data' (pulsed when the register is read from the bus)
      mem_read_data_value             : IN     std_logic_vector (31 DOWNTO 0);                  -- Value of register 'mem_read_data', field 'value'
      elink_group_sel_strobe          : OUT    std_logic;                                       -- Strobe signal for register 'elink_group_sel' (pulsed when the register is written from the bus)
      elink_group_sel_value           : OUT    std_logic_vector (3 DOWNTO 0);                   -- Value of register 'elink_group_sel', field 'value'
      int_enable_strobe               : OUT    std_logic;                                       -- Strobe signal for register 'int_enable' (pulsed when the register is written from the bus)
      int_enable_value                : OUT    std_logic_vector (0 DOWNTO 0)                    -- Value of register 'int_enable', field 'value'
   );

-- Declarations

END emp_elink_mem_interface_regs ;

architecture RTL of emp_elink_mem_interface_regs is

    -- Constants
    constant AXI_OKAY           : std_logic_vector(1 downto 0) := "00";
    constant AXI_DECERR         : std_logic_vector(1 downto 0) := "11";

    -- Registered signals
    signal s_axi_awready_r    : std_logic;
    signal s_axi_wready_r     : std_logic;
    signal s_axi_awaddr_reg_r : unsigned(s_axi_awaddr'range);
    signal s_axi_bvalid_r     : std_logic;
    signal s_axi_bresp_r      : std_logic_vector(s_axi_bresp'range);
    signal s_axi_arready_r    : std_logic;
    signal s_axi_araddr_reg_r : unsigned(s_axi_araddr'range);
    signal s_axi_rvalid_r     : std_logic;
    signal s_axi_rresp_r      : std_logic_vector(s_axi_rresp'range);
    signal s_axi_wdata_reg_r  : std_logic_vector(s_axi_wdata'range);
    signal s_axi_wstrb_reg_r  : std_logic_vector(s_axi_wstrb'range);
    signal s_axi_rdata_r      : std_logic_vector(s_axi_rdata'range);
    
    -- User-defined registers
    signal s_magic_strobe_r : std_logic;
    signal s_reg_magic_value : std_logic_vector(31 downto 0);
    signal s_command_strobe_r : std_logic;
    signal s_reg_command_mem_read_write_r : std_logic_vector(0 downto 0);
    signal s_reg_command_start_uplink_storage_r : std_logic_vector(0 downto 0);
    signal s_reg_command_start_downlink_delivery_r : std_logic_vector(0 downto 0);
    signal s_reg_command_reset_r : std_logic_vector(0 downto 0);
    signal s_reg_command_downlink_loop_r : std_logic_vector(0 downto 0);
    signal s_status_strobe_r : std_logic;
    signal s_reg_status_done : std_logic_vector(0 downto 0);
    signal s_mem_addr_strobe_r : std_logic;
    signal s_reg_mem_addr_value_r : std_logic_vector(31 downto 0);
    signal s_mem_write_data_strobe_r : std_logic;
    signal s_reg_mem_write_data_value_r : std_logic_vector(31 downto 0);
    signal s_mem_read_data_strobe_r : std_logic;
    signal s_reg_mem_read_data_value : std_logic_vector(31 downto 0);
    signal s_elink_group_sel_strobe_r : std_logic;
    signal s_reg_elink_group_sel_value_r : std_logic_vector(3 downto 0);
    signal s_int_enable_strobe_r : std_logic;
    signal s_reg_int_enable_value_r : std_logic_vector(0 downto 0);
begin

    ----------------------------------------------------------------------------
    -- Inputs
    --
    s_reg_magic_value <= magic_value;
    s_reg_status_done <= status_done;
    s_reg_mem_read_data_value <= mem_read_data_value;
    ----------------------------------------------------------------------------
    -- Read-transaction FSM
    --    
    read_fsm : process(axi_aclk, axi_aresetn) is
        constant MAX_MEMORY_LATENCY : natural := 3;
        type t_state is (IDLE, READ_REGISTER, WAIT_MEMORY_RDATA, READ_RESPONSE, DONE);
        -- registered state variables
        variable v_state_r          : t_state;
        variable v_rdata_r          : std_logic_vector(31 downto 0);
        variable v_rresp_r          : std_logic_vector(s_axi_rresp'range);
        variable v_mem_wait_count_r : natural range 0 to MAX_MEMORY_LATENCY;
        -- combinatorial helper variables
        variable v_addr_hit : boolean;
        variable v_mem_addr : unsigned(AXI_ADDR_WIDTH-1 downto 0);
    begin
        if axi_aresetn = '0' then
            v_state_r          := IDLE;
            v_rdata_r          := (others => '0');
            v_rresp_r          := (others => '0');
            v_mem_wait_count_r := 0;
            s_axi_arready_r    <= '0';
            s_axi_rvalid_r     <= '0';
            s_axi_rresp_r      <= (others => '0');
            s_axi_araddr_reg_r <= (others => '0');
            s_axi_rdata_r      <= (others => '0');
            s_magic_strobe_r <= '0';
            s_status_strobe_r <= '0';
            s_mem_read_data_strobe_r <= '0';
 
        elsif rising_edge(axi_aclk) then
            -- Default values:
            s_axi_arready_r <= '0';
            s_magic_strobe_r <= '0';
            s_status_strobe_r <= '0';
            s_mem_read_data_strobe_r <= '0';
            
            case v_state_r is
          
                -- Wait for the start of a read transaction, which is 
                -- initiated by the assertion of ARVALID
                when IDLE =>
                    if s_axi_arvalid = '1' then
                        s_axi_araddr_reg_r <= unsigned(s_axi_araddr); -- save the read address
                        s_axi_arready_r    <= '1'; -- acknowledge the read-address
                        v_state_r          := READ_REGISTER;
                    end if;

                -- Read from the actual storage element
                when READ_REGISTER =>
                    -- defaults:
                    v_addr_hit := false;
                    v_rdata_r  := (others => '0');
                    
                    -- register 'magic' at address offset 0x0 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + MAGIC_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(31 downto 0) := s_reg_magic_value;
                        s_magic_strobe_r <= '1';
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'command' at address offset 0x4 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + COMMAND_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(0 downto 0) := s_reg_command_mem_read_write_r;
                        v_rdata_r(1 downto 1) := s_reg_command_start_uplink_storage_r;
                        v_rdata_r(2 downto 2) := s_reg_command_start_downlink_delivery_r;
                        v_rdata_r(3 downto 3) := s_reg_command_reset_r;
                        v_rdata_r(4 downto 4) := s_reg_command_downlink_loop_r;
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'status' at address offset 0x8 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + STATUS_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(0 downto 0) := s_reg_status_done;
                        s_status_strobe_r <= '1';
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'mem_addr' at address offset 0xC 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + MEM_ADDR_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(31 downto 0) := s_reg_mem_addr_value_r;
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'mem_write_data' at address offset 0x10 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + MEM_WRITE_DATA_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(31 downto 0) := s_reg_mem_write_data_value_r;
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'mem_read_data' at address offset 0x14 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + MEM_READ_DATA_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(31 downto 0) := s_reg_mem_read_data_value;
                        s_mem_read_data_strobe_r <= '1';
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'elink_group_sel' at address offset 0x18 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + ELINK_GROUP_SEL_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(3 downto 0) := s_reg_elink_group_sel_value_r;
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- register 'int_enable' at address offset 0x1C 
                    if s_axi_araddr_reg_r = resize(unsigned(BASEADDR) + INT_ENABLE_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;
                        v_rdata_r(0 downto 0) := s_reg_int_enable_value_r;
                        v_state_r := READ_RESPONSE;
                    end if;
                    --
                    if v_addr_hit then
                        v_rresp_r := AXI_OKAY;
                    else
                        v_rresp_r := AXI_DECERR;
                        -- pragma translate_off
                        report "ARADDR decode error" severity warning;
                        -- pragma translate_on
                        v_state_r := READ_RESPONSE;
                    end if;

                -- Wait for memory read data
                when WAIT_MEMORY_RDATA =>
                    if v_mem_wait_count_r = 0 then
                        v_state_r      := READ_RESPONSE;
                    else
                        v_mem_wait_count_r := v_mem_wait_count_r - 1;
                    end if;

                -- Generate read response
                when READ_RESPONSE =>
                    s_axi_rvalid_r <= '1';
                    s_axi_rresp_r  <= v_rresp_r;
                    s_axi_rdata_r  <= v_rdata_r;
                    --
                    v_state_r      := DONE;

                -- Write transaction completed, wait for master RREADY to proceed
                when DONE =>
                    if s_axi_rready = '1' then
                        s_axi_rvalid_r <= '0';
                        s_axi_rdata_r   <= (others => '0');
                        v_state_r      := IDLE;
                    end if;
            end case;
        end if;
    end process read_fsm;

    ----------------------------------------------------------------------------
    -- Write-transaction FSM
    --    
    write_fsm : process(axi_aclk, axi_aresetn) is
        type t_state is (IDLE, ADDR_FIRST, DATA_FIRST, UPDATE_REGISTER, DONE);
        variable v_state_r  : t_state;
        variable v_addr_hit : boolean;
        variable v_mem_addr : unsigned(AXI_ADDR_WIDTH-1 downto 0);
    begin
        if axi_aresetn = '0' then
            v_state_r          := IDLE;
            s_axi_awready_r    <= '0';
            s_axi_wready_r     <= '0';
            s_axi_awaddr_reg_r <= (others => '0');
            s_axi_wdata_reg_r  <= (others => '0');
            s_axi_wstrb_reg_r  <= (others => '0');
            s_axi_bvalid_r     <= '0';
            s_axi_bresp_r      <= (others => '0');
            --            
            s_command_strobe_r <= '0';
            s_reg_command_mem_read_write_r <= COMMAND_MEM_READ_WRITE_RESET;
            s_reg_command_start_uplink_storage_r <= COMMAND_START_UPLINK_STORAGE_RESET;
            s_reg_command_start_downlink_delivery_r <= COMMAND_START_DOWNLINK_DELIVERY_RESET;
            s_reg_command_reset_r <= COMMAND_RESET_RESET;
            s_reg_command_downlink_loop_r <= COMMAND_DOWNLINK_LOOP_RESET;
            s_mem_addr_strobe_r <= '0';
            s_reg_mem_addr_value_r <= MEM_ADDR_VALUE_RESET;
            s_mem_write_data_strobe_r <= '0';
            s_reg_mem_write_data_value_r <= MEM_WRITE_DATA_VALUE_RESET;
            s_elink_group_sel_strobe_r <= '0';
            s_reg_elink_group_sel_value_r <= ELINK_GROUP_SEL_VALUE_RESET;
            s_int_enable_strobe_r <= '0';
            s_reg_int_enable_value_r <= INT_ENABLE_VALUE_RESET;

        elsif rising_edge(axi_aclk) then
            -- Default values:
            s_axi_awready_r <= '0';
            s_axi_wready_r  <= '0';
            s_command_strobe_r <= '0';
            s_mem_addr_strobe_r <= '0';
            s_mem_write_data_strobe_r <= '0';
            s_elink_group_sel_strobe_r <= '0';
            s_int_enable_strobe_r <= '0';

            -- Self-clearing fields:
            s_reg_command_mem_read_write_r <= (others => '0');
            s_reg_command_start_uplink_storage_r <= (others => '0');
            s_reg_command_start_downlink_delivery_r <= (others => '0');
            s_reg_command_reset_r <= (others => '0');

            case v_state_r is

                -- Wait for the start of a write transaction, which may be 
                -- initiated by either of the following conditions:
                --   * assertion of both AWVALID and WVALID
                --   * assertion of AWVALID
                --   * assertion of WVALID
                when IDLE =>
                    if s_axi_awvalid = '1' and s_axi_wvalid = '1' then
                        s_axi_awaddr_reg_r <= unsigned(s_axi_awaddr); -- save the write-address 
                        s_axi_awready_r    <= '1'; -- acknowledge the write-address
                        s_axi_wdata_reg_r  <= s_axi_wdata; -- save the write-data
                        s_axi_wstrb_reg_r  <= s_axi_wstrb; -- save the write-strobe
                        s_axi_wready_r     <= '1'; -- acknowledge the write-data
                        v_state_r          := UPDATE_REGISTER;

                        
                    elsif s_axi_awvalid = '1' then
                        s_axi_awaddr_reg_r <= unsigned(s_axi_awaddr); -- save the write-address 
                        s_axi_awready_r    <= '1'; -- acknowledge the write-address
                        v_state_r          := ADDR_FIRST;
                    elsif s_axi_wvalid = '1' then
                        s_axi_wdata_reg_r <= s_axi_wdata; -- save the write-data
                        s_axi_wstrb_reg_r <= s_axi_wstrb; -- save the write-strobe
                        s_axi_wready_r    <= '1'; -- acknowledge the write-data
                        v_state_r         := DATA_FIRST;
                    end if;

                -- Address-first write transaction: wait for the write-data
                when ADDR_FIRST =>
                    if s_axi_wvalid = '1' then
                        s_axi_wdata_reg_r <= s_axi_wdata; -- save the write-data
                        s_axi_wstrb_reg_r <= s_axi_wstrb; -- save the write-strobe
                        s_axi_wready_r    <= '1'; -- acknowledge the write-data
                        v_state_r         := UPDATE_REGISTER;

                    end if;

                -- Data-first write transaction: wait for the write-address
                when DATA_FIRST =>
                    if s_axi_awvalid = '1' then
                        s_axi_awaddr_reg_r <= unsigned(s_axi_awaddr); -- save the write-address 
                        s_axi_awready_r    <= '1'; -- acknowledge the write-address
                        v_state_r          := UPDATE_REGISTER;

                    end if;

                -- Update the actual storage element
                when UPDATE_REGISTER =>
                    s_axi_bresp_r               <= AXI_OKAY; -- default value, may be overriden in case of decode error
                    s_axi_bvalid_r              <= '1';
                    --
                    v_addr_hit := false;
                    -- register 'command' at address offset 0x4
                    if s_axi_awaddr_reg_r = resize(unsigned(BASEADDR) + COMMAND_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;                        
                        s_command_strobe_r <= '1';
                        -- field 'mem_read_write':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_command_mem_read_write_r(0) <= s_axi_wdata_reg_r(0); -- mem_read_write(0)
                        end if;
                        -- field 'start_uplink_storage':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_command_start_uplink_storage_r(0) <= s_axi_wdata_reg_r(1); -- start_uplink_storage(0)
                        end if;
                        -- field 'start_downlink_delivery':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_command_start_downlink_delivery_r(0) <= s_axi_wdata_reg_r(2); -- start_downlink_delivery(0)
                        end if;
                        -- field 'reset':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_command_reset_r(0) <= s_axi_wdata_reg_r(3); -- reset(0)
                        end if;
                        -- field 'downlink_loop':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_command_downlink_loop_r(0) <= s_axi_wdata_reg_r(4); -- downlink_loop(0)
                        end if;
                    end if;
                    -- register 'mem_addr' at address offset 0xC
                    if s_axi_awaddr_reg_r = resize(unsigned(BASEADDR) + MEM_ADDR_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;                        
                        s_mem_addr_strobe_r <= '1';
                        -- field 'value':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(0) <= s_axi_wdata_reg_r(0); -- value(0)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(1) <= s_axi_wdata_reg_r(1); -- value(1)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(2) <= s_axi_wdata_reg_r(2); -- value(2)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(3) <= s_axi_wdata_reg_r(3); -- value(3)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(4) <= s_axi_wdata_reg_r(4); -- value(4)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(5) <= s_axi_wdata_reg_r(5); -- value(5)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(6) <= s_axi_wdata_reg_r(6); -- value(6)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_addr_value_r(7) <= s_axi_wdata_reg_r(7); -- value(7)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(8) <= s_axi_wdata_reg_r(8); -- value(8)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(9) <= s_axi_wdata_reg_r(9); -- value(9)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(10) <= s_axi_wdata_reg_r(10); -- value(10)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(11) <= s_axi_wdata_reg_r(11); -- value(11)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(12) <= s_axi_wdata_reg_r(12); -- value(12)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(13) <= s_axi_wdata_reg_r(13); -- value(13)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(14) <= s_axi_wdata_reg_r(14); -- value(14)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_addr_value_r(15) <= s_axi_wdata_reg_r(15); -- value(15)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(16) <= s_axi_wdata_reg_r(16); -- value(16)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(17) <= s_axi_wdata_reg_r(17); -- value(17)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(18) <= s_axi_wdata_reg_r(18); -- value(18)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(19) <= s_axi_wdata_reg_r(19); -- value(19)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(20) <= s_axi_wdata_reg_r(20); -- value(20)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(21) <= s_axi_wdata_reg_r(21); -- value(21)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(22) <= s_axi_wdata_reg_r(22); -- value(22)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_addr_value_r(23) <= s_axi_wdata_reg_r(23); -- value(23)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(24) <= s_axi_wdata_reg_r(24); -- value(24)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(25) <= s_axi_wdata_reg_r(25); -- value(25)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(26) <= s_axi_wdata_reg_r(26); -- value(26)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(27) <= s_axi_wdata_reg_r(27); -- value(27)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(28) <= s_axi_wdata_reg_r(28); -- value(28)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(29) <= s_axi_wdata_reg_r(29); -- value(29)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(30) <= s_axi_wdata_reg_r(30); -- value(30)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_addr_value_r(31) <= s_axi_wdata_reg_r(31); -- value(31)
                        end if;
                    end if;
                    -- register 'mem_write_data' at address offset 0x10
                    if s_axi_awaddr_reg_r = resize(unsigned(BASEADDR) + MEM_WRITE_DATA_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;                        
                        s_mem_write_data_strobe_r <= '1';
                        -- field 'value':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(0) <= s_axi_wdata_reg_r(0); -- value(0)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(1) <= s_axi_wdata_reg_r(1); -- value(1)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(2) <= s_axi_wdata_reg_r(2); -- value(2)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(3) <= s_axi_wdata_reg_r(3); -- value(3)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(4) <= s_axi_wdata_reg_r(4); -- value(4)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(5) <= s_axi_wdata_reg_r(5); -- value(5)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(6) <= s_axi_wdata_reg_r(6); -- value(6)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_mem_write_data_value_r(7) <= s_axi_wdata_reg_r(7); -- value(7)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(8) <= s_axi_wdata_reg_r(8); -- value(8)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(9) <= s_axi_wdata_reg_r(9); -- value(9)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(10) <= s_axi_wdata_reg_r(10); -- value(10)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(11) <= s_axi_wdata_reg_r(11); -- value(11)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(12) <= s_axi_wdata_reg_r(12); -- value(12)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(13) <= s_axi_wdata_reg_r(13); -- value(13)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(14) <= s_axi_wdata_reg_r(14); -- value(14)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_mem_write_data_value_r(15) <= s_axi_wdata_reg_r(15); -- value(15)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(16) <= s_axi_wdata_reg_r(16); -- value(16)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(17) <= s_axi_wdata_reg_r(17); -- value(17)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(18) <= s_axi_wdata_reg_r(18); -- value(18)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(19) <= s_axi_wdata_reg_r(19); -- value(19)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(20) <= s_axi_wdata_reg_r(20); -- value(20)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(21) <= s_axi_wdata_reg_r(21); -- value(21)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(22) <= s_axi_wdata_reg_r(22); -- value(22)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_mem_write_data_value_r(23) <= s_axi_wdata_reg_r(23); -- value(23)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(24) <= s_axi_wdata_reg_r(24); -- value(24)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(25) <= s_axi_wdata_reg_r(25); -- value(25)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(26) <= s_axi_wdata_reg_r(26); -- value(26)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(27) <= s_axi_wdata_reg_r(27); -- value(27)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(28) <= s_axi_wdata_reg_r(28); -- value(28)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(29) <= s_axi_wdata_reg_r(29); -- value(29)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(30) <= s_axi_wdata_reg_r(30); -- value(30)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_mem_write_data_value_r(31) <= s_axi_wdata_reg_r(31); -- value(31)
                        end if;
                    end if;
                    -- register 'elink_group_sel' at address offset 0x18
                    if s_axi_awaddr_reg_r = resize(unsigned(BASEADDR) + ELINK_GROUP_SEL_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;                        
                        s_elink_group_sel_strobe_r <= '1';
                        -- field 'value':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_elink_group_sel_value_r(0) <= s_axi_wdata_reg_r(0); -- value(0)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then 
                            s_reg_elink_group_sel_value_r(1) <= s_axi_wdata_reg_r(1); -- value(1)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_elink_group_sel_value_r(2) <= s_axi_wdata_reg_r(2); -- value(2)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_elink_group_sel_value_r(3) <= s_axi_wdata_reg_r(3); -- value(3)
                        end if;
                    end if;
                    -- register 'int_enable' at address offset 0x1C
                    if s_axi_awaddr_reg_r = resize(unsigned(BASEADDR) + INT_ENABLE_OFFSET, AXI_ADDR_WIDTH) then
                        v_addr_hit := true;                        
                        s_int_enable_strobe_r <= '1';
                        -- field 'value':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_int_enable_value_r(0) <= s_axi_wdata_reg_r(0); -- value(0)
                        end if;
                    end if;
                    --
                    if not v_addr_hit then
                        s_axi_bresp_r <= AXI_DECERR;
                        -- pragma translate_off
                        report "AWADDR decode error" severity warning;
                        -- pragma translate_on
                    end if;
                    --
                    v_state_r := DONE;

                -- Write transaction completed, wait for master BREADY to proceed
                when DONE =>
                    if s_axi_bready = '1' then
                        s_axi_bvalid_r <= '0';
                        v_state_r      := IDLE;
                    end if;

            end case;


        end if;
    end process write_fsm;

    ----------------------------------------------------------------------------
    -- Outputs
    --
    s_axi_awready <= s_axi_awready_r;
    s_axi_wready  <= s_axi_wready_r;
    s_axi_bvalid  <= s_axi_bvalid_r;
    s_axi_bresp   <= s_axi_bresp_r;
    s_axi_arready <= s_axi_arready_r;
    s_axi_rvalid  <= s_axi_rvalid_r;
    s_axi_rresp   <= s_axi_rresp_r;
    s_axi_rdata   <= s_axi_rdata_r;

    magic_strobe <= s_magic_strobe_r;
    command_strobe <= s_command_strobe_r;
    command_mem_read_write <= s_reg_command_mem_read_write_r;
    command_start_uplink_storage <= s_reg_command_start_uplink_storage_r;
    command_start_downlink_delivery <= s_reg_command_start_downlink_delivery_r;
    command_reset <= s_reg_command_reset_r;
    command_downlink_loop <= s_reg_command_downlink_loop_r;
    status_strobe <= s_status_strobe_r;
    mem_addr_strobe <= s_mem_addr_strobe_r;
    mem_addr_value <= s_reg_mem_addr_value_r;
    mem_write_data_strobe <= s_mem_write_data_strobe_r;
    mem_write_data_value <= s_reg_mem_write_data_value_r;
    mem_read_data_strobe <= s_mem_read_data_strobe_r;
    elink_group_sel_strobe <= s_elink_group_sel_strobe_r;
    elink_group_sel_value <= s_reg_elink_group_sel_value_r;
    int_enable_strobe <= s_int_enable_strobe_r;
    int_enable_value <= s_reg_int_enable_value_r;

end architecture RTL;
