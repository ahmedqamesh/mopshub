--
-- VHDL Entity mopshub_lib.serializer_rx_nitz.arch_name
--
-- Created:
--          by - Ahmed Qamesh (University of Wuppertal)
--          at - 14:10:02 11/15/24
--
-- using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

-- Entity declaration
entity serializer_rx_nitz is
    Port (
        clk80       : in  STD_LOGIC;                -- 80 MHz clock for serial data sampling
        clk40       : in  STD_LOGIC;                -- 40 MHz clock for parallel data output
        reset       : in  STD_LOGIC;                -- Reset signal
        DATA1bitIN  : in  STD_LOGIC;                -- Serial data input
        DATA2bitIN  : out STD_LOGIC_VECTOR (1 downto 0)  -- Parallel 2-bit data output
    );
end serializer_rx_nitz;

-- Architecture definition
architecture Behavioral of serializer_rx_nitz is
    signal shreg2bit : STD_LOGIC_VECTOR(1 downto 0) := (others => '0'); -- Shift register
begin

    -- Shift register: Shift in serial data at 80 MHz
    process(clk80)
    begin
    if rising_edge(clk80) then
        if reset = '1' then
            shreg2bit <= (others => '0');
        else
            shreg2bit <= DATA1bitIN & shreg2bit(1);
        end if;
      end if;
    end process;

    -- Capture 2-bit data at 40 MHz
    process(clk40)
    begin
    if rising_edge(clk40) then
        if reset = '1' then
            DATA2bitIN <= (others => '0');
        else
            DATA2bitIN <= shreg2bit;
        end if;
    end if;
    end process;

end Behavioral;

