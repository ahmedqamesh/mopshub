library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_master is
	generic (
		F_CLK : natural := 50000000;
		F_SCK : natural := 25000000
	);
	port (
		clk : in std_logic := '0';
		reset : in std_logic := '0';
		
		sck : out std_logic := '0';
		miso : in std_logic := '0';
		mosi : out std_logic := '0';
		
		txdat : in std_logic_vector(7 downto 0) := (others => '0');
		rxdat : out std_logic_vector(7 downto 0) := (others => '0');
		
		transceive : in std_logic := '0';
		busy : out std_logic := '0'
	);
end spi_master;

architecture Behavioral of spi_master is
	-- baud generator signals
	signal sck_en : std_logic := '0';
	signal sck_cnt : integer range 0 to ((F_CLK / (2 * F_SCK))-1) := 0;
	
	-- fsm
	type spi_states is (idle, load, tx1, tx2, writeback);
	signal Z : spi_states := idle;
	
	-- shift-registers
	signal rx_sr : std_logic_vector(7 downto 0) := (others => '0');
	signal tx_sr : std_logic_vector(7 downto 0) := (others => '0');
	
	-- bit counter
	signal bitcnt : integer range 0 to 7 := 0;
begin

-- sck baudrate generator
process begin
	wait until rising_edge(clk);
	
	if reset = '1' then
		sck_en <= '0';
	else
		if sck_cnt = ((F_CLK / (2 * F_SCK))-1) then
			sck_en <= '1';
			sck_cnt <= 0;
		else
			sck_en <= '0';
			sck_cnt <= sck_cnt + 1;
		end if;
	end if;
end process;

-- spi fsm
process begin
	wait until rising_edge(clk);
	
	if reset = '1' then
		Z <= idle;
	else
			case Z is
				when idle =>
					if transceive = '1' then
						Z <= load;
					end if;
					sck <= '0';
				
				when load =>
					tx_sr <= txdat;
					bitcnt <= 7;
					sck <= '0';
					if sck_en = '1' then
						Z <= tx1;
					end if;
					
				when tx1 =>
					if sck_en = '1' then
						rx_sr <= rx_sr(6 downto 0) & miso;		-- sample miso on rising edge of sck
						sck <= '1'; 
						Z <= tx2;
					end if;
					
				when tx2 =>
					if sck_en = '1' then
						tx_sr <= tx_sr(6 downto 0) & '0';		-- shift on falling edge of sck
						sck <= '0';
						if bitcnt = 0 then
							Z <= writeback;
						else
							Z <= tx1;
							bitcnt <= bitcnt - 1;
						end if;
					end if;
					
				when writeback =>
					rxdat <= rx_sr;
					Z <= idle;
					
			end case;
	end if;
end process;
mosi <= tx_sr(7);
busy <= '0' when ((Z = idle) and (transceive = '0')) else '1';

end Behavioral;