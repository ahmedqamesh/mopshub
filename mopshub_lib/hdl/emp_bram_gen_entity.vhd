----------------------------------------------------------------------------------
-- Company: CERN
-- Engineer: Morten Haahr Kristensen
-- 
-- Create Date: 12/11/2020 11:18:39 AM
-- Design Name: emp_shared_memory
-- Module Name: bram_gen - Behavioral
-- Project Name: EMP
-- Target Devices: 
-- Tool Versions: 
-- Description: A BRAM Generator that can be used for any amount of memory. Should always use utilize inferred BRAM blocks.
-- Uses a shared clock. Implemented as true dual port ram.
-- 
-- Dependencies: None.
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Build with inspiration from UG901 "Dual-Port Block RAM with Two Write Ports in Read-First Mode (VHDL)"
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity emp_bram_gen is
	generic(
		constant MEMORY_DEPTH : integer range 1 to 280000       := 280000;
		constant MEMORY_WIDTH : integer                         := 8
	);
	port(
		clka   : in  std_logic;
		clkb   : in  std_logic;
		ena   : in  std_logic;
		enb   : in  std_logic;
		wea   : in  std_logic;
		web   : in  std_logic;
		addra : in  std_logic_vector(31 downto 0);
		addrb : in  std_logic_vector(31 downto 0);
		dina   : in  std_logic_vector(MEMORY_WIDTH - 1 downto 0);
		dinb   : in  std_logic_vector(MEMORY_WIDTH - 1 downto 0);
		douta   : out std_logic_vector(MEMORY_WIDTH - 1 downto 0);
		doutb   : out std_logic_vector(MEMORY_WIDTH - 1 downto 0)
	);
end emp_bram_gen;

architecture Behavioral of emp_bram_gen is
	-- Types
	type ram_t is array (MEMORY_DEPTH-1 downto 0) of std_logic_vector(MEMORY_WIDTH - 1 downto 0);

	-- Signals
	signal RAMa : ram_t;
	signal RAMb : ram_t;
begin

	ch1 : process(clka)
	begin
		if rising_edge(clka) then
			if ena = '1' then
				if wea = '1' then
				  RAMa(to_integer(unsigned(addra))) <= dina;
				else
					douta <= RAMa(to_integer(unsigned(addra)));
				end if;
			end if;
		end if;
	end process;
	
    ch2 : process(clkb)
	begin
		if rising_edge(clkb) then
			if enb = '1' then
				if web = '1' then
					RAMb(to_integer(unsigned(addrb))) <= dinb;
				else
					doutb <= RAMb(to_integer(unsigned(addrb)));
				end if;
			end if;
		end if;
	end process;

end Behavioral;
