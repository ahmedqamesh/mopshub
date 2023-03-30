library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use work.ipbus.all;
use work.ipbus_reg_types.all;
entity ethernet_SM is
 	generic(
		N_REG: positive := 3
	);
  port (
        clk : in std_logic;
        rst : in std_logic;
        ipb_slave_in : in ipb_wbus := IPB_WBUS_NULL;
        ipb_slave_out : out ipb_rbus;
        start_write_elink_dbg: out std_logic;
        start_read_elink_dbg : out std_logic;
        fifo_flush_dbg: out std_logic;
        irq_tra_sig: in std_logic;
        data_tra_downlink: in  std_logic_vector(75 downto 0);
        data_rec_uplink  : in  std_logic_vector(75 downto 0);
        data_rec_ethernet: out std_logic_vector(75 downto 0)
    );
end ethernet_SM;

architecture rtl of ethernet_SM is
  constant ADDR_WIDTH: integer := calc_width(N_REG);    
  signal data_rec_elink_reg: std_logic_vector(95 downto 0);
  signal start_write_elink_reg: std_logic;
  signal start_read_elink_reg: std_logic;
	signal fifo_flush_reg: std_logic;
  signal data_reg: ipb_reg_v(N_REG - 1 downto 0);
	signal data_rec_r: ipb_reg_v(2 ** ADDR_WIDTH - 1 downto 0);
	signal ipb_ack_i : std_logic;
	signal sel: integer range 0 to 2 ** ADDR_WIDTH - 1 := 0;

begin
    sel <= to_integer(unsigned(ipb_slave_in.ipb_addr(ADDR_WIDTH - 1 downto 0))) when ADDR_WIDTH > 0 else 0;    
    data_rec_r(N_REG - 1 downto 0) <= data_reg;
    data_rec_r(2 ** ADDR_WIDTH - 1 downto N_REG) <= (others => (others => '0'));
-- IPbus
process (clk, rst) begin
    if rst = '1' then
        ---ipb_slave_out <= IPB_RBUS_NULL;
        ipb_slave_out.ipb_rdata <= (others => '0');
        ipb_ack_i <= '0';
        ipb_slave_out.ipb_err  <= '0';
        data_rec_elink_reg <= (others => '0');
        start_write_elink_reg <='0';
        start_read_elink_reg  <='0';
        fifo_flush_reg <= '0';
    else
        if rising_edge(clk) then
            -- defaults
            ipb_ack_i <= '0';
            ipb_slave_out.ipb_err <= '0';
            start_write_elink_reg <= '0';
            start_read_elink_reg  <= '0';
            fifo_flush_reg        <= '0';
            if ipb_slave_in.ipb_strobe = '1' and ipb_ack_i = '0' then
                -- The master identifies write transactions with the ipb_write flag
                if ipb_slave_in.ipb_write = '1' then
                    data_reg(sel) <= ipb_slave_in.ipb_wdata;
                    case  ipb_slave_in.ipb_addr(3 downto 0) is 
                      
                        when "0110" =>
                          data_rec_elink_reg(95 downto 64) <= ipb_slave_in.ipb_wdata;
                        when "0111" => 
                          data_rec_elink_reg(63 downto 32) <= ipb_slave_in.ipb_wdata;
                        when "1000" => 
                          data_rec_elink_reg(31 downto 0)  <= ipb_slave_in.ipb_wdata;
                        when "1001" => 
                          start_write_elink_reg <= '1';
                        when "1010" => 
                          start_read_elink_reg  <= '1';
                        when "1011" => 
                          fifo_flush_reg        <= '1';
                        when  others => data_rec_elink_reg <= data_rec_elink_reg;                 
                    end case;
                    --- write is acknowledged as soon as writing is done
                    ipb_ack_i <= '1';
                    ipb_slave_out.ipb_err <= '0';                    
                else
                     --- reads are acknowledged as soon as reading is done
                    ipb_ack_i <= '1';
                    ipb_slave_out.ipb_err <= '0';
                    case ipb_slave_in.ipb_addr(3 downto 0) is
                      
                        when "0000" => 
                          ipb_slave_out.ipb_rdata <= data_tra_downlink(75 downto 44);
                        when "0001" => 
                          ipb_slave_out.ipb_rdata <= data_tra_downlink(43 downto 12) ;
                        when "0010" => 
                          ipb_slave_out.ipb_rdata(31 downto 20) <= data_tra_downlink(11 downto 0); --& X"00000";         
                          ipb_slave_out.ipb_rdata(19 downto 0)  <= (others => '0');
                        when "0011" => 
                          ipb_slave_out.ipb_rdata(31 downto 1) <= (others => '0');
                          ipb_slave_out.ipb_rdata(0)           <= irq_tra_sig;
                        when "0100" => 
                          ipb_slave_out.ipb_rdata <= data_rec_uplink(43 downto 12);
                        when "0101" => 
                          ipb_slave_out.ipb_rdata(31 downto 20) <= data_rec_uplink(11 downto 0); 
                          ipb_slave_out.ipb_rdata(19 downto 0)  <= (others => '0');                      
                        when "0110" => 
                          ipb_slave_out.ipb_rdata <= data_rec_elink_reg(95 downto 64);
                        when "0111" => 
                          ipb_slave_out.ipb_rdata <= data_rec_elink_reg(63 downto 32);
                        when "1000" => 
                          ipb_slave_out.ipb_rdata <= data_rec_elink_reg(31 downto 0);
                        when "1001" => 
                          ipb_slave_out.ipb_rdata(31 downto 1) <= (others => '0');
                          ipb_slave_out.ipb_rdata(0)           <= start_write_elink_reg;
                        when "1010" => 
                          ipb_slave_out.ipb_rdata <= data_rec_r(sel);
                        when others => 
                          ipb_slave_out.ipb_rdata <= (others => '0');
                    end case;    
                end if;
            else data_rec_elink_reg <= data_rec_elink_reg; 
          end if;
        end if;
    end if;
end process;
ipb_slave_out.ipb_ack <= ipb_ack_i;
data_rec_ethernet <= data_rec_elink_reg(95 downto 20);   
start_write_elink_dbg <= start_write_elink_reg;
start_read_elink_dbg  <= start_read_elink_reg;
fifo_flush_dbg <= fifo_flush_reg;
end architecture;