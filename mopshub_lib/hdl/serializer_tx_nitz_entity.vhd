--
-- VHDL Entity mopshub_lib.serializer_tx_nitz.arch_name
--
-- Created:
--          by - Ahmed Qamesh (University of Wuppertal)
--          at - 16:09:10 11/13/24
--
-- using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration for the serialization module
entity serializer_tx_nitz is
    Port ( clk80 : in  STD_LOGIC;                -- 80 MHz clock
           DATA2bitOUT : in  STD_LOGIC_VECTOR(1 downto 0);  -- 2-bit input
           reset       : in  STD_LOGIC;                -- Reset signal
           DATA1bitOUT : out  STD_LOGIC             -- Serialized output
           );
end serializer_tx_nitz;

-- Architecture definition
architecture Behavioral of serializer_tx_nitz is
    signal bitCount1 : STD_LOGIC := '0';        -- Toggle signal to select which bit to output
    signal DATA2bitOUT_r : STD_LOGIC := '0';       -- Register to hold DATA2bitOUT(1)
begin

    -- Flip bitCount1 on each rising edge of clk80
    process(clk80)
    begin
        if rising_edge(clk80) then
            if reset = '1' then
                bitCount1 <= '0';                 -- Reset toggle signal
            else
                bitCount1 <= not bitCount1;       -- Toggle between '0' and '1'
            end if;
        end if;
    end process;

    -- Register DATA2bitOUT(1) when bitCount1 = '0'
    -- This saves DATA2bitOUT(1) for output on the next cycle
    process(clk80)
    begin
        if rising_edge(clk80) then
            if reset = '1' then
                DATA2bitOUT_r <= '0';            -- Reset stored bit
            elsif bitCount1 = '0' then
                DATA2bitOUT_r <= DATA2bitOUT(1); -- Save DATA2bitOUT(1)
            end if;
        end if;
    end process;

    -- Serialization process: Output DATA2bitOUT(0) or DATA2bitOUT_r based on bitCount1
    process(clk80)
    begin
        if rising_edge(clk80) then
            if reset = '1' then
                DATA1bitOUT <= '0';              -- Reset serialized output
            elsif bitCount1 = '0' then
                DATA1bitOUT <= DATA2bitOUT(0);   -- Output first bit of DATA2bitOUT
            else
                DATA1bitOUT <= DATA2bitOUT_r;    -- Output second bit of DATA2bitOUT (stored)
            end if;
        end if;
    end process;
    

end Behavioral;