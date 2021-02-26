----------------------------------------------------------------------------------
--! Company:  EDAQ WIS.  
--! Engineer: juna
--! 
--! Create Date:    17/08/2015 
--! Module Name:    Elink2FIFO
--! Project Name:   FELIX
----------------------------------------------------------------------------------
--! Use standard library
library ieee, work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.all;

--! consists of 1 E-path
entity Elink2FIFO is
generic (
    InputDataRate       : integer := 80; -- 80 / 160 / 320 / 640 MHz
    elinkEncoding       : std_logic_vector (1 downto 0) := "01"; -- 00-direct data / 01-8b10b encoding / 10-HDLC encoding 
    serialized_input    : boolean := true
    );
port ( 
    clk40       : in  std_logic;
    clk80       : in  std_logic;
    clk160      : in  std_logic;    
    clk320      : in  std_logic;
    rst         : in  std_logic;
    fifo_flush  : in  std_logic;
    swap_input  : in  std_logic;
    inhibitRX   : in  std_logic;
    reverse_rx  : in  std_logic;
    wrEn_dbg    : out std_logic;
    din_dbg     : out std_logic_vector(9 downto 0);
    ------
    DATA1bitIN  : in  std_logic := '0';
    elink2bit   : in  std_logic_vector (1 downto 0) := (others=>'0'); -- 2 bits @ clk40, can interface 2-bit of GBT frame
    elink4bit   : in  std_logic_vector (3 downto 0) := (others=>'0'); -- 4 bits @ clk40, can interface 4-bit of GBT frame
    elink8bit   : in  std_logic_vector (7 downto 0) := (others=>'0'); -- 8 bits @ clk40, can interface 8-bit of GBT frame
    ------
    efifoRclk   : in  std_logic;
    efifoRe     : in  std_logic; 
    efifoEmpty  : out std_logic;
    efifoFull   : out std_logic;
    efifoDout   : out std_logic_vector(9 downto 0)
    ------
    );
end Elink2FIFO;

architecture Behavioral of Elink2FIFO is

component elinkRXfifo_wrap
    generic(elinkEncoding : std_logic_vector (1 downto 0) := "01");
    port(
        -----------------------------
        ------ General Interface ---- 
        bitClk          : in  std_logic;
        rst             : in  std_logic;
        inhibit         : in  std_logic;
        flush_fifo      : in  std_logic;
        -----------------------------
        ---- EPROC_IN2 Interface ----
        din             : in  std_logic_vector(9 downto 0);
        din_rdy         : in  std_logic;
        ----------------------------
        --- User Logic Interface ---
        rd_clk_elink    : in  std_logic;
        rd_en_elink     : in  std_logic;
        empty_elink     : out std_logic;
        full_elink      : out std_logic;
        dout_elink      : out std_logic_vector(9 downto 0)
    );
end component;

--
constant maxClen    : std_logic_vector (11 downto 0) := (others => '0'); -- no limit on packet size here
signal DATA2bitIN, shreg2bit : std_logic_vector (1 downto 0) := (others => '0');
signal DATA4bitIN, shreg4bit : std_logic_vector (3 downto 0) := (others => '0');
signal DATA8bitIN, shreg8bit : std_logic_vector (7 downto 0) := (others => '0');
signal DATA_OUT     : std_logic_vector(9 downto 0);
signal din_efw      : std_logic_vector(9 downto 0);
signal DATA_RDY, FIFO_RESET_STATE, almost_full, BWORD_RDY  : std_logic;
signal BWORD        : std_logic_vector(15 downto 0); 
signal dataIn       : std_logic_vector(1 downto 0) := (others => '0');
signal drdy_efw     : std_logic := '0';
signal busyOut      : std_logic := '0';
signal RXfifoClk    : std_logic := '0';

signal dec8bOut     : std_logic_vector(9 downto 0) := (others => '0');
----

begin


------------------------------------------------------------
-- E-PATH case 80 MHz
------------------------------------------------------------
InputDataRate80: if InputDataRate = 80 generate
--
actual_elink_case: if serialized_input = true generate
process(clk80)
begin
    if rising_edge(clk80) then
        shreg2bit <= DATA1bitIN & shreg2bit(1);
	end if;
end process;
--
process(clk40)
begin
    if rising_edge(clk40) then
        DATA2bitIN <= shreg2bit;
	end if;
end process;
end generate actual_elink_case;
--
--
GBT_frame_case: if serialized_input = false generate
process(clk40)
begin
    if rising_edge(clk40) then
        DATA2bitIN <= elink2bit;
	end if;
end process;
end generate GBT_frame_case; 
--

EPROC_IN2bit: entity work.EPROC_IN2 
generic map (
        egroupID                        => 2,
        EnableToHo_Egroup0Eproc2_8b10b  => true,
        EnableToHo_Egroup1Eproc2_8b10b  => true,
        EnableToHo_Egroup2Eproc2_8b10b  => true,
        EnableToHo_Egroup3Eproc2_8b10b  => true,
        EnableToHo_Egroup4Eproc2_8b10b  => true,
        EnableToHo_Egroup7Eproc2_8b10b  => true,
        includeNoEncodingCase           => true,
        GENERATE_FEI4B                  => false
    		)
port map( 
			bitCLK     => clk40,
            bitCLKx2   => clk80,
			rst        => rst,
			ENA        => '1', -- always enabled here
            swap_inputbits => swap_input,
			thCR_REVERSE_10B => reverse_rx,
			ENCODING   => elinkEncoding,  -- 00-direct data / 01-8b10b encoding / 10-HDLC encoding 
			EDATA_IN   => dataIn, -- @ 40MHz
			DATA_OUT   => DATA_OUT,  -- 10-bit data out
			DATA_RDY   => DATA_RDY
		);

sel_bits_proc: process(swap_input, DATA2bitIN)
begin
    case swap_input is
    when '0'    => dataIn <= DATA2bitIN;
    when '1'    => dataIn <= DATA2bitIN(0) & DATA2bitIN(1);
    when others => dataIn <= DATA2bitIN;
    end case;
end process;

end generate InputDataRate80;


-- reg the efw sigs
generate8b10b: if elinkEncoding = "01" generate

pipe_efw_proc: process(RXfifoClk)
begin
    if(rising_edge(RXfifoClk))then
        drdy_efw <= DATA_RDY;
        din_efw  <= dec8bOut;
        wrEn_dbg <= DATA_RDY;
        din_dbg  <= dec8bOut;
    end if;
end process;

end generate generate8b10b;

generateHDLC: if elinkEncoding = "10" generate

pipe_efw_proc: process(RXfifoClk)
begin
    if(rising_edge(RXfifoClk))then
        drdy_efw <= DATA_RDY;
        din_efw  <= DATA_OUT;
        wrEn_dbg <= DATA_RDY;
        din_dbg  <= DATA_OUT;
    end if;
end process;

end generate generateHDLC;

dec_8b10: entity work.dec_8b10_wrap
generic map (
                GENERATE_FEI4B  => false
            )
port map(
    RESET         => rst,
    RBYTECLK      => clk160,
    ABCDEIFGHJ_IN => DATA_OUT, -- 8b10b encoded
    HGFEDCBA      => dec8bOut(7 downto 0),
    ISK           => dec8bOut(9 downto 8),
    BUSY          => busyOut
);     

elinkRXfifo_wrap_inst: elinkRXfifo_wrap
    generic map(elinkEncoding => elinkEncoding)
    port map(
        -----------------------------
        ------ General Interface ---- 
        bitClk          => RXfifoClk,
        rst             => rst,
        inhibit         => inhibitRX,
        flush_fifo      => fifo_flush,
        -----------------------------
        ---- EPROC_IN2 Interface ----
        din             => din_efw,
        din_rdy         => drdy_efw,
        ----------------------------
        --- User Logic Interface ---
        rd_clk_elink    => efifoRclk,
        rd_en_elink     => efifoRe,
        empty_elink     => efifoEmpty,
        full_elink      => efifoFull,
        dout_elink      => efifoDout
    );
    
    RXfifoClk <= clk40 when elinkEncoding = "01" else clk80;

end Behavioral;

