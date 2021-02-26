----------------------------------------------------------------------------------
-- Company: NTU ATHENS - BNL
-- Engineer: Christos Bakalis (christos.bakalis@cern.ch)
-- 
-- Copyright Notice/Copying Permission:
--    Copyright 2017 Christos Bakalis
--
--    This file is part of NTUA-BNL_VMM_firmware.
--
--    NTUA-BNL_VMM_firmware is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    NTUA-BNL_VMM_firmware is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with NTUA-BNL_VMM_firmware.  If not, see <http://www.gnu.org/licenses/>.
-- 
-- Create Date: 19.12.2016 13:35:28
-- Design Name: Clock Domain Crossing Circuit
-- Module Name: CDCC - RTL
-- Project Name: CDCC
-- Target Devices: All Xilinx devices
-- Tool Versions: Vivado 2016.2
-- Description: This design instantiates a number of cascaded DFFs, which are used
-- to synchronize data that are crossing clock domains. The user must provide the
-- source clock and the destination clock, as well as the number of bits that are
-- to be synchronized.
-- 
-- Changelog:
-- 13.01.2017 Added ASYNC_REG attribute to the XDC constraints file, and also
-- added an extra layer of registers for the input signals. (Christos Bakalis)
-- 02.03.2017 Removed FDREs and added simple clocked processes. (Christos Bakalis)
--
----------------------------------------------------------------------------------

library IEEE;
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use UNISIM.VComponents.all;

entity CDCC is
generic(
    NUMBER_OF_BITS : integer := 8); -- number of signals to be synced
port(
    clk_src     : in  std_logic;                                        -- input clk (source clock)
    clk_dst     : in  std_logic;                                        -- input clk (dest clock)
    data_in     : in  std_logic_vector(NUMBER_OF_BITS - 1 downto 0);    -- data to be synced
    data_out_s  : out std_logic_vector(NUMBER_OF_BITS - 1 downto 0)     -- synced data to clk_dst
    );
end CDCC;

architecture RTL of CDCC is
    
    signal data_in_reg          : std_logic_vector(NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal data_sync_stage_0    : std_logic_vector(NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal data_out_s_int       : std_logic_vector(NUMBER_OF_BITS - 1 downto 0) := (others => '0');

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of data_sync_stage_0    : signal is "TRUE";
    attribute ASYNC_REG of data_out_s_int       : signal is "TRUE";

begin

-------------------------------------------------------
-- Register the input signals
-------------------------------------------------------
register_input_proc: process(clk_src)
begin
    if(rising_edge(clk_src))then
        data_in_reg <= data_in;
    end if;
end process;

-------------------------------------------------------
-- Double synchronization
-------------------------------------------------------
meta_proc: process(clk_dst)
begin
    if(rising_edge(clk_dst))then
        data_sync_stage_0 <= data_in_reg;
        data_out_s_int    <= data_sync_stage_0;
    end if;
end process;

    data_out_s  <= data_out_s_int;

end RTL;