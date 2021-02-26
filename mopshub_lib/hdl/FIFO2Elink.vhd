----------------------------------------------------------------------------------
--! Company:  EDAQ WIS.  
--! Engineer: juna
--! 
--! Create Date:    17/08/2015 
--! Module Name:    FIFO2Elink
--! Project Name:   FELIX
----------------------------------------------------------------------------------
--! Use standard library
library ieee, work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.all;

--! consists of 1 E-path
entity FIFO2Elink is
generic (
    OutputDataRate  : integer := 80; -- 80 / 160 / 320 MHz
    elinkEncoding   : std_logic_vector (1 downto 0) := "01" -- 00-direct data / 01-8b10b encoding / 10-HDLC encoding 
    );
port ( 
    clk40       : in  std_logic;
    clk80       : in  std_logic;
    clk160      : in  std_logic;
    clk320      : in  std_logic;
    rst         : in  std_logic;
    fifo_flush  : in  std_logic;
    swap_output : in  std_logic;
    reverse_tx  : in  std_logic;
    ------   
    efifoDin    : in  std_logic_vector (17 downto 0);   -- [data_code,2bit][data,16bit]
    efifoWe     : in  std_logic;
    efifoPfull  : out std_logic; 
    efifoWclk   : in  std_logic; 
    ------
    DATA1bitOUT : out std_logic; -- serialized output
    elink2bit   : out std_logic_vector (1 downto 0); -- 2 bits @ clk40, can interface 2-bit of GBT frame
    elink4bit   : out std_logic_vector (3 downto 0); -- 4 bits @ clk40, can interface 4-bit of GBT frame
    elink8bit   : out std_logic_vector (7 downto 0)  -- 8 bits @ clk40, can interface 8-bit of GBT frame
    ------
    );
end FIFO2Elink;

architecture Behavioral of FIFO2Elink is

----
signal efifoRE, doutRdy : std_logic;
signal efifoDout : std_logic_vector(9 downto 0); 
signal dout2bit  : std_logic_vector(1 downto 0); 
signal bitCount1,dout2bit_r : std_logic := '0';
signal dout4bit, dout4bit_r : std_logic_vector(3 downto 0); 
signal dout8bit, dout8bit_r : std_logic_vector(7 downto 0); 
signal bitCount2 : std_logic_vector(1 downto 0) := "00";
signal bitCount3 : std_logic_vector(2 downto 0) := "000";
----

begin


------------------------------------------------------------
-- EPATH_FIFO
------------------------------------------------------------
UEF: entity work.upstreamEpathFifoWrap
port map(
    rst 	        => rst,
    fifoFLUSH       => fifo_flush,
    ---
    wr_clk 	=> efifoWclk,
    wr_en 	=> efifoWe,
    din     => efifoDin,
    ---
    rd_clk 	=> clk160,
    rd_en 	=> efifoRE, 
    dout 	=> efifoDout,
    doutRdy => doutRdy,
    ---
    full        => open,
    empty       => open,
    prog_full   => efifoPfull
    );
--

------------------------------------------------------------
-- E-PATH case 80 MHz
------------------------------------------------------------
OutputDataRate80: if OutputDataRate = 80 generate

EPROC_OUT2bit: entity work.EPROC_OUT2 
generic map (
        IC_Elink                        => false,
        egroupID                        => 0,
        EnableFrHo_Egroup0Eproc2_HDLC   => false,
        EnableFrHo_Egroup0Eproc2_8b10b  => true,
        EnableFrHo_Egroup1Eproc2_HDLC   => false,
        EnableFrHo_Egroup1Eproc2_8b10b  => true,
        EnableFrHo_Egroup2Eproc2_HDLC   => false,
        EnableFrHo_Egroup2Eproc2_8b10b  => true,
        EnableFrHo_Egroup3Eproc2_HDLC   => false,
        EnableFrHo_Egroup3Eproc2_8b10b  => true,
        EnableFrHo_Egroup4Eproc2_HDLC   => false,
        EnableFrHo_Egroup4Eproc2_8b10b  => true,
        EnableFrHo_Egroup5Eproc2_HDLC   => false,
        EnableFrHo_Egroup5Eproc2_8b10b  => true,
        --IG            do_generate     => ,
        includeNoEncodingCase           => false,
        HDLC_IDLE_STATE                 => x"7F"
		)
port map(
			bitCLK     => clk40,
			bitCLKx2   => clk80,
			bitCLKx4   => clk160,
			rst        => rst,
			ENA        => '1', -- always enabled here
			swap_outbits => swap_output, -- when '1', the output bits will be swapped
			getDataTrig => efifoRE,
			ENCODING   => ("00" & elinkEncoding), -- 0000-direct data / 0001-8b10b encoding / 0010-HDLC encoding / others are used for TTC formats
			EDATA_OUT  => dout2bit, -- @ 40MHz
			TTCin      => "00", -- not in use here
            		fhCR_REVERSE_10B => reverse_tx,
			DATA_IN    => efifoDout,  -- 10-bit data in
			DATA_RDY   => doutRdy,
            		toHostXoff => '0'
		);
--
-------------------------------------------
-- serialization of the 2-bit data output:
-------------------------------------------
process(clk80)
begin
    if rising_edge(clk80) then
        bitCount1 <= not bitCount1;
	end if;
end process;
--
process(clk80)
begin
    if rising_edge(clk80) then
        if bitCount1 = '0' then
            dout2bit_r <= dout2bit(1);
        end if;
	end if;
end process;
---
process(clk80) -- serialized output
begin
    if rising_edge(clk80) then
        if bitCount1 = '0' then
            DATA1bitOUT <= dout2bit(0);
        else
            DATA1bitOUT <= dout2bit_r;
        end if;
	end if;
end process;
---
elink2bit <= dout2bit; -- 2 bits @ clk40, can interface 2-bit of GBT frame
elink4bit <= (others=>'0'); -- 4 bits @ clk40, can interface 4-bit of GBT frame
elink8bit <= (others=>'0'); -- 8 bits @ clk40, can interface 8-bit of GBT frame
--
end generate OutputDataRate80; 

------------------------------------------------------------
-- unsupported Data Rate
------------------------------------------------------------
unsupported_Data_Rate: if OutputDataRate /= 80 and OutputDataRate /= 160 and OutputDataRate /= 320 generate
---
DATA1bitOUT <= '0'; -- serialized output
elink2bit <= (others=>'0'); -- 2 bits @ clk40, can interface 2-bit of GBT frame
elink4bit <= (others=>'0'); -- 4 bits @ clk40, can interface 4-bit of GBT frame
elink8bit <= (others=>'0'); -- 8 bits @ clk40, can interface 8-bit of GBT frame
--
end generate unsupported_Data_Rate; 



end Behavioral;

