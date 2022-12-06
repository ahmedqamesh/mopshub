--
-- VHDL Entity mopshub_lib.sys_clk_divider.arch_name
--
-- Created:
--          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
--          at - 16:34:30 12/04/21
--
-- using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
ENTITY sys_clk_divider IS
    port (
        rstn : in std_logic;
        clk_100 : out std_logic;
        clk_80 : out std_logic;
        clk_40 : out std_logic;
        clk_in_p : in std_logic;
        clk_in_n : in std_logic;
        locked  : out    std_logic;
        reset_m  : out    std_logic
    );

END ENTITY sys_clk_divider;
    
architecture Behavioral of sys_clk_divider is
    component clk_wiz_0
        port (
            clk100_in          : in     std_logic;
            rstn               : in     std_logic;
            clk40_out          : out    std_logic;
            clk80_out          : out    std_logic;
            clk100_out         : out    std_logic;
            resetn             : in     std_logic;
            locked             : out    std_logic
        );
    end component;
    
begin

-- PLL to generate system clocks 40, 80 and 160 MHz from on-board 100 MHz clock
pll: clk_wiz_0
    port map (
        clk100_in => clk100_in,
        clk40_out => clk40,
        clk80_out => clk80,
        clk160_out => clk100,
        resetn => rstn,
        locked => locked
    );
   
-- use locked as reset
reset <= not locked;
    

-- diff clk buffer
clk_buf: IBUFDS
    port map (
        I  => clk_in_p,
        IB => clk_in_n,
        O  => clk100_in
    );
    
end Behavioral;