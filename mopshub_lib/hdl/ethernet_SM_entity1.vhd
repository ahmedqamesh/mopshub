library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
--use work.ipbus.all;
--use work.ipbus_reg_types.all;
entity test_ethernet_SM is
 	generic(
		N_REG: positive := 3
	);
  port (
        clk : in std_logic;
        rst : in std_logic;
        --ipb_slave_in : in ipb_wbus := IPB_WBUS_NULL;
        ipb_slave_in: in std_logic_vector(31 downto 0);
        ipb_write: in std_logic;
        ipb_addr: in std_logic_vector(3 downto 0);
        ipb_slave_out : out std_logic_vector(31 downto 0);
        start_write_elink_dbg: out std_logic;
        start_read_elink_dbg : out std_logic;
        fifo_flush_dbg: out std_logic;
        irq_tra_sig: in std_logic;
        data_tra_downlink: in std_logic_vector(75 downto 0);
        data_rec_uplink: in std_logic_vector(75 downto 0);
        data_rec_ethernet: out std_logic_vector(75 downto 0)
    );
end test_ethernet_SM;

architecture rtl of test_ethernet_SM is
  signal data_rec_elink_reg: std_logic_vector(95 downto 0);
  signal ipb_slave_out_reg: std_logic_vector(31 downto 0);
	signal start_write_elink_reg: std_logic;
	signal start_read_elink_reg: std_logic;
	signal fifo_flush_reg: std_logic;

begin
    --sel <= to_integer(unsigned(ipb_slave_in.ipb_addr(ADDR_WIDTH - 1 downto 0))) when ADDR_WIDTH > 0 else 0;
    --data_rec_r(N_REG - 1 downto 0) <= data_reg;
    --data_rec_r(2 ** ADDR_WIDTH - 1 downto N_REG) <= (others => (others => '0'));
	 ipb_slave_out_reg<= (others => '0');
-- IPbus
process (clk, rst) begin
    if rst = '0' then
        --ipb_slave_out <= IPB_RBUS_NULL;
        ipb_slave_out_reg <= (others => '0');
        data_rec_elink_reg <= (others => '0');
        ipb_slave_out_reg<= (others => '0');
        start_write_elink_reg <='0';
        start_read_elink_reg <='0';
        fifo_flush_reg <= '0';
    else
        if rising_edge(clk) then
            -- defaults
            start_write_elink_reg <= '0';
            start_read_elink_reg <= '0';
            fifo_flush_reg <= '0';
                if ipb_write = '1' then
                   -- data_reg(sel) <= ipb_slave_in;
                    case  ipb_addr is 
                        when "0110" => data_rec_elink_reg(95 downto 64) <= ipb_slave_in;
                        when "0111" => data_rec_elink_reg(63 downto 32) <= ipb_slave_in;
                        when "1000" => data_rec_elink_reg(31 downto 0)  <= ipb_slave_in;
                        when "1001" => start_write_elink_reg <= '1';
                        when "1010" => start_read_elink_reg <= '1';
                        when "1011" => fifo_flush_reg <= '1';
                        when  others => data_rec_elink_reg <= data_rec_elink_reg;                 
                    end case;
                    
                else
                    case ipb_addr is
                        when "0000" => ipb_slave_out_reg <= data_tra_downlink(75 downto 44); --X"DEEDBEEF";
                        when "0001" => ipb_slave_out_reg <= data_tra_downlink(43 downto 12) ;--X"BEEFBEEF";
                        when "0010" => ipb_slave_out_reg <= data_tra_downlink(11 downto 0) & X"00000"; --X"000";
                         
                        when "0011" => ipb_slave_out_reg <= X"0000000"& b"000"& irq_tra_sig;--  data_rec_uplink(75 downto 44); --X"DEEDBEEF";
                        when "0100" => ipb_slave_out_reg <= data_rec_uplink(43 downto 12) ;--X"BEEFBEEF";
                        when "0101" => ipb_slave_out_reg <= data_rec_uplink(11 downto 0) & X"00000"; --X"000"; 
                        
                        when "0110" => ipb_slave_out_reg <= data_rec_elink_reg(95 downto 64);
                        when "0111" => ipb_slave_out_reg <= data_rec_elink_reg(63 downto 32);
                        when "1000" => ipb_slave_out_reg <= data_rec_elink_reg(31 downto 0);
                        when others => ipb_slave_out_reg <= (others => '0');
                    end case;
                end if;
            else data_rec_elink_reg <= data_rec_elink_reg; 
        end if;
    end if;
end process;

data_rec_ethernet <= data_rec_elink_reg(95 downto 20);
ipb_slave_out <=ipb_slave_out_reg;  
start_write_elink_dbg <= start_write_elink_reg;
start_read_elink_dbg  <= start_read_elink_reg;
fifo_flush_dbg <= fifo_flush_reg;
end architecture;