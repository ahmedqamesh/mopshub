-- -----------------------------------------------------------------------------
-- 'emp_elink_mem_interface' Register Definitions
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package emp_elink_mem_interface_regs_pkg is

    -- Type definitions
    type slv1_array_t is array(natural range <>) of std_logic_vector(0 downto 0);
    type slv2_array_t is array(natural range <>) of std_logic_vector(1 downto 0);
    type slv3_array_t is array(natural range <>) of std_logic_vector(2 downto 0);
    type slv4_array_t is array(natural range <>) of std_logic_vector(3 downto 0);
    type slv5_array_t is array(natural range <>) of std_logic_vector(4 downto 0);
    type slv6_array_t is array(natural range <>) of std_logic_vector(5 downto 0);
    type slv7_array_t is array(natural range <>) of std_logic_vector(6 downto 0);
    type slv8_array_t is array(natural range <>) of std_logic_vector(7 downto 0);
    type slv9_array_t is array(natural range <>) of std_logic_vector(8 downto 0);
    type slv10_array_t is array(natural range <>) of std_logic_vector(9 downto 0);
    type slv11_array_t is array(natural range <>) of std_logic_vector(10 downto 0);
    type slv12_array_t is array(natural range <>) of std_logic_vector(11 downto 0);
    type slv13_array_t is array(natural range <>) of std_logic_vector(12 downto 0);
    type slv14_array_t is array(natural range <>) of std_logic_vector(13 downto 0);
    type slv15_array_t is array(natural range <>) of std_logic_vector(14 downto 0);
    type slv16_array_t is array(natural range <>) of std_logic_vector(15 downto 0);
    type slv17_array_t is array(natural range <>) of std_logic_vector(16 downto 0);
    type slv18_array_t is array(natural range <>) of std_logic_vector(17 downto 0);
    type slv19_array_t is array(natural range <>) of std_logic_vector(18 downto 0);
    type slv20_array_t is array(natural range <>) of std_logic_vector(19 downto 0);
    type slv21_array_t is array(natural range <>) of std_logic_vector(20 downto 0);
    type slv22_array_t is array(natural range <>) of std_logic_vector(21 downto 0);
    type slv23_array_t is array(natural range <>) of std_logic_vector(22 downto 0);
    type slv24_array_t is array(natural range <>) of std_logic_vector(23 downto 0);
    type slv25_array_t is array(natural range <>) of std_logic_vector(24 downto 0);
    type slv26_array_t is array(natural range <>) of std_logic_vector(25 downto 0);
    type slv27_array_t is array(natural range <>) of std_logic_vector(26 downto 0);
    type slv28_array_t is array(natural range <>) of std_logic_vector(27 downto 0);
    type slv29_array_t is array(natural range <>) of std_logic_vector(28 downto 0);
    type slv30_array_t is array(natural range <>) of std_logic_vector(29 downto 0);
    type slv31_array_t is array(natural range <>) of std_logic_vector(30 downto 0);
    type slv32_array_t is array(natural range <>) of std_logic_vector(31 downto 0);


    -- Revision number of the 'emp_elink_mem_interface' register map
    constant EMP_ELINK_MEM_INTERFACE_REVISION : natural := 46;

    -- Default base address of the 'emp_elink_mem_interface' register map 
    constant EMP_ELINK_MEM_INTERFACE_DEFAULT_BASEADDR : unsigned(31 downto 0) := unsigned'(x"A2000000");
    
    -- Register 'magic'
    constant MAGIC_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000000"); -- address offset of the 'magic' register
    -- Field 'magic.value'
    constant MAGIC_VALUE_BIT_OFFSET : natural := 0; -- bit offset of the 'value' field
    constant MAGIC_VALUE_BIT_WIDTH : natural := 32; -- bit width of the 'value' field
    constant MAGIC_VALUE_RESET : std_logic_vector(31 downto 0) := std_logic_vector'("00000000000000000000000000000000"); -- reset value of the 'value' field
    
    -- Register 'command'
    constant COMMAND_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000004"); -- address offset of the 'command' register
    -- Field 'command.mem_read_write'
    constant COMMAND_MEM_READ_WRITE_BIT_OFFSET : natural := 0; -- bit offset of the 'mem_read_write' field
    constant COMMAND_MEM_READ_WRITE_BIT_WIDTH : natural := 1; -- bit width of the 'mem_read_write' field
    constant COMMAND_MEM_READ_WRITE_RESET : std_logic_vector(0 downto 0) := std_logic_vector'("0"); -- reset value of the 'mem_read_write' field
    -- Field 'command.start_uplink_storage'
    constant COMMAND_START_UPLINK_STORAGE_BIT_OFFSET : natural := 1; -- bit offset of the 'start_uplink_storage' field
    constant COMMAND_START_UPLINK_STORAGE_BIT_WIDTH : natural := 1; -- bit width of the 'start_uplink_storage' field
    constant COMMAND_START_UPLINK_STORAGE_RESET : std_logic_vector(1 downto 1) := std_logic_vector'("0"); -- reset value of the 'start_uplink_storage' field
    -- Field 'command.start_downlink_delivery'
    constant COMMAND_START_DOWNLINK_DELIVERY_BIT_OFFSET : natural := 2; -- bit offset of the 'start_downlink_delivery' field
    constant COMMAND_START_DOWNLINK_DELIVERY_BIT_WIDTH : natural := 1; -- bit width of the 'start_downlink_delivery' field
    constant COMMAND_START_DOWNLINK_DELIVERY_RESET : std_logic_vector(2 downto 2) := std_logic_vector'("0"); -- reset value of the 'start_downlink_delivery' field
    -- Field 'command.reset'
    constant COMMAND_RESET_BIT_OFFSET : natural := 3; -- bit offset of the 'reset' field
    constant COMMAND_RESET_BIT_WIDTH : natural := 1; -- bit width of the 'reset' field
    constant COMMAND_RESET_RESET : std_logic_vector(3 downto 3) := std_logic_vector'("0"); -- reset value of the 'reset' field
    -- Field 'command.downlink_loop'
    constant COMMAND_DOWNLINK_LOOP_BIT_OFFSET : natural := 4; -- bit offset of the 'downlink_loop' field
    constant COMMAND_DOWNLINK_LOOP_BIT_WIDTH : natural := 1; -- bit width of the 'downlink_loop' field
    constant COMMAND_DOWNLINK_LOOP_RESET : std_logic_vector(4 downto 4) := std_logic_vector'("0"); -- reset value of the 'downlink_loop' field
    
    -- Register 'status'
    constant STATUS_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000008"); -- address offset of the 'status' register
    -- Field 'status.done'
    constant STATUS_DONE_BIT_OFFSET : natural := 0; -- bit offset of the 'done' field
    constant STATUS_DONE_BIT_WIDTH : natural := 1; -- bit width of the 'done' field
    constant STATUS_DONE_RESET : std_logic_vector(0 downto 0) := std_logic_vector'("0"); -- reset value of the 'done' field
    
    -- Register 'mem_addr'
    constant MEM_ADDR_OFFSET : unsigned(31 downto 0) := unsigned'(x"0000000C"); -- address offset of the 'mem_addr' register
    -- Field 'mem_addr.value'
    constant MEM_ADDR_VALUE_BIT_OFFSET : natural := 0; -- bit offset of the 'value' field
    constant MEM_ADDR_VALUE_BIT_WIDTH : natural := 32; -- bit width of the 'value' field
    constant MEM_ADDR_VALUE_RESET : std_logic_vector(31 downto 0) := std_logic_vector'("00000000000000000000000000000000"); -- reset value of the 'value' field
    
    -- Register 'mem_write_data'
    constant MEM_WRITE_DATA_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000010"); -- address offset of the 'mem_write_data' register
    -- Field 'mem_write_data.value'
    constant MEM_WRITE_DATA_VALUE_BIT_OFFSET : natural := 0; -- bit offset of the 'value' field
    constant MEM_WRITE_DATA_VALUE_BIT_WIDTH : natural := 32; -- bit width of the 'value' field
    constant MEM_WRITE_DATA_VALUE_RESET : std_logic_vector(31 downto 0) := std_logic_vector'("00000000000000000000000000000000"); -- reset value of the 'value' field
    
    -- Register 'mem_read_data'
    constant MEM_READ_DATA_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000014"); -- address offset of the 'mem_read_data' register
    -- Field 'mem_read_data.value'
    constant MEM_READ_DATA_VALUE_BIT_OFFSET : natural := 0; -- bit offset of the 'value' field
    constant MEM_READ_DATA_VALUE_BIT_WIDTH : natural := 32; -- bit width of the 'value' field
    constant MEM_READ_DATA_VALUE_RESET : std_logic_vector(31 downto 0) := std_logic_vector'("00000000000000000000000000000000"); -- reset value of the 'value' field
    
    -- Register 'elink_group_sel'
    constant ELINK_GROUP_SEL_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000018"); -- address offset of the 'elink_group_sel' register
    -- Field 'elink_group_sel.value'
    constant ELINK_GROUP_SEL_VALUE_BIT_OFFSET : natural := 0; -- bit offset of the 'value' field
    constant ELINK_GROUP_SEL_VALUE_BIT_WIDTH : natural := 4; -- bit width of the 'value' field
    constant ELINK_GROUP_SEL_VALUE_RESET : std_logic_vector(3 downto 0) := std_logic_vector'("0000"); -- reset value of the 'value' field
    
    -- Register 'int_enable'
    constant INT_ENABLE_OFFSET : unsigned(31 downto 0) := unsigned'(x"0000001C"); -- address offset of the 'int_enable' register
    -- Field 'int_enable.value'
    constant INT_ENABLE_VALUE_BIT_OFFSET : natural := 0; -- bit offset of the 'value' field
    constant INT_ENABLE_VALUE_BIT_WIDTH : natural := 1; -- bit width of the 'value' field
    constant INT_ENABLE_VALUE_RESET : std_logic_vector(0 downto 0) := std_logic_vector'("0"); -- reset value of the 'value' field

end emp_elink_mem_interface_regs_pkg;
