--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Nico Giangiacomi
--!               Frans Schreuder
--! 
--!   Licensed under the Apache License, Version 2.0 (the "License");
--!   you may not use this file except in compliance with the License.
--!   You may obtain a copy of the License at
--!
--!       http://www.apache.org/licenses/LICENSE-2.0
--!
--!   Unless required by applicable law or agreed to in writing, software
--!   distributed under the License is distributed on an "AS IS" BASIS,
--!   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--!   See the License for the specific language governing permissions and
--!   limitations under the License.

----------------------------------------------------------------------------------
-- Company: University of Bologna
-- Engineer: Nico Giangiacomi (nico.giangiacomi@cern.ch)
-- 
-- Create Date: 10/30/2019 03:36:26 PM
-- Design Name: 
-- Module Name: AxiToByteStream - Behavioral
-- Project Name: Felix_GBT
-- Target Devices: FELIX boards
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: 
--        Axi stream fifo wrapper
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.axi_stream_package.all;
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AxiStreamToByte is
 generic(
  BYTES: integer := 1;
  BLOCKSIZE : integer := 1024;
  USE_BUILT_IN_FIFO : std_logic := '1'
  );
 port (
  clk40 : in std_logic; --BC clock for DataIn
  reset : in std_logic; --Acitve high reset
  EnableIn : in std_logic; --Enable epath (register map)
  
  s_axis : in axis_8_type;  --FIFO write port (axi stream)
  s_axis_tready : out std_logic; --FIFO write tready (axi stream)
  s_axis_aclk : in std_logic; --FIFO write clock (axi stream)
  
  m_axis_tready : in std_logic; --From Protocol Encoder; 
  almost_full : out std_logic;
  
  DataOut : out std_logic_vector(BYTES*8-1 downto 0); --8b Data to Protocol Encoder
  DataOutValid : out std_logic_vector(BYTES-1 downto 0); --Data validated to Encoder, (always 1 if enabled)
  EOP : out std_logic_vector(BYTES-1 downto 0) --from tlast
  
  );
end AxiStreamToByte;

architecture Behavioral of AxiStreamToByte is

signal s_axis_aresetn: std_logic;

signal m_axis: axis_8_type;

signal EnableIn_aclk: std_logic;
signal m_axis_tready_s: std_logic;

begin



g_onebyte: if BYTES = 1 generate
    DataOut <= m_axis.tdata(BYTES*8-1 downto 0);
    DataOutValid(0) <= m_axis.tvalid when EnableIn_aclk = '1' else '0';
    EOP(0) <= m_axis.tlast when EnableIn_aclk = '1' else '0';
    m_axis_tready_s <= m_axis_tready when EnableIn_aclk = '1' else '1'; --When the Epath is disabled we need to constantly read out the FIFO, otherwise the CRFromHost gets blocked.
end generate;

g_multibyte: if BYTES > 1 generate
--!TODO
end generate;


--NICO: same clock domain? does it need clock synchronization?
s_axis_aresetn <= not reset;




fifo0: entity work.Axis8Fifo
    generic map(
        DEPTH            => BLOCKSIZE*2, -- Multiply by 2 because this is 8b. Will contain 2 blocks.
        CLOCKING_MODE    => "independent_clock",
        RELATED_CLOCKS   => 0,
        FIFO_MEMORY_TYPE => "auto",
        PACKET_FIFO      => "false",
        USE_BUILT_IN_FIFO => USE_BUILT_IN_FIFO
    )
    port map(
        -- axi stream slave
        s_axis_aresetn => s_axis_aresetn,
        s_axis_aclk => s_axis_aclk,
        s_axis => s_axis,
        s_axis_tready => s_axis_tready,

        -- axi stream master
        m_axis_aclk => clk40,
        m_axis => m_axis,
        m_axis_tready => m_axis_tready_s,
        almost_full => almost_full
    );


-- clock synch process (double buffer)
process(clk40)
    variable EnableIn_p1: std_logic;
begin
    if rising_edge(clk40) then
        EnableIn_aclk <= EnableIn_p1;
        EnableIn_p1 := EnableIn;
    end if;
end process;
 
end Behavioral;
