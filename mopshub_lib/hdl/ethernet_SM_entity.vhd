library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use work.ipbus.all;
use work.ipbus_reg_types.all;
entity ethernet_SM is
 	generic(
		N_REG: positive := 1
	);
  port (
        clk : in std_logic;
        rst : in std_logic;
        ipb_slave_in : in ipb_wbus := IPB_WBUS_NULL;
        ipb_slave_out : out ipb_rbus
    );
end ethernet_SM;

architecture rtl of ethernet_SM is
    signal ipb_ack_i : std_logic;
    signal ipb_err_i : std_logic;

	constant ADDR_WIDTH: integer := calc_width(N_REG);

	signal reg: ipb_reg_v(N_REG - 1 downto 0);
	signal ri: ipb_reg_v(2 ** ADDR_WIDTH - 1 downto 0);
	signal sel: integer range 0 to 2 ** ADDR_WIDTH - 1 := 0;
begin
    sel <= to_integer(unsigned(ipb_slave_in.ipb_addr(ADDR_WIDTH - 1 downto 0))) when ADDR_WIDTH > 0 else 0;
    ri(N_REG - 1 downto 0) <= reg;
	ri(2 ** ADDR_WIDTH - 1 downto N_REG) <= (others => (others => '0'));
	
-- IPbus
process (clk, rst) begin
    if rst = '1' then
        ipb_slave_out.ipb_rdata <= (others => '0');
        ipb_ack_i <= '0';
        ipb_err_i <= '0';
    else
        if rising_edge(clk) then
            -- defaults
            ipb_ack_i <= '0';
            ipb_err_i <= '0';

            if ipb_slave_in.ipb_strobe = '1' and ipb_ack_i = '0' then
                ipb_ack_i <= '1';

                if ipb_slave_in.ipb_strobe = '1' and ipb_slave_in.ipb_write = '1' then
                    ipb_err_i <= '0';
                    reg(sel) <= ipb_slave_in.ipb_wdata;
                else
                    case ipb_slave_in.ipb_addr(3 downto 0) is
                        when "0000" => ipb_slave_out.ipb_rdata <= X"DEEDBEEF";
                        when "0001" => ipb_slave_out.ipb_rdata <= X"BEEFBEEF";
                        when "0010" => ipb_slave_out.ipb_rdata <= X"DEADDEAD";
                        when "0100" => ipb_slave_out.ipb_rdata <= X"AAAAAAAA";
                        when "0011" => ipb_slave_out.ipb_rdata <= X"BBBBBBBB";
                        when "0101" => ipb_slave_out.ipb_rdata <= X"CCCCCCCC";
                        when "0110" => ipb_slave_out.ipb_rdata <= X"AAAABBBB";
                        when "0111" => ipb_slave_out.ipb_rdata <= X"AAAACCCC";
                        when "1000" => ipb_slave_out.ipb_rdata <= ri(sel);
                        when others => ipb_slave_out.ipb_rdata <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end if;
end process;

ipb_slave_out.ipb_ack <= ipb_ack_i;
ipb_slave_out.ipb_err <= ipb_err_i;
            

end architecture;
    