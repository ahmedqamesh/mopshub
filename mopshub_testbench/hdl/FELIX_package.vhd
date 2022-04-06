--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Alessandra Camplani
--!               Frans Schreuder
--!               Thei Wijnen
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pcie_package.all;

package FELIX_package is  
  
  type array_69b is array (natural range <>) of std_logic_vector(68 downto 0);
  type array_66b is array (natural range <>) of std_logic_vector(65 downto 0);
  type array_64b is array (natural range <>) of std_logic_vector(63 downto 0);
  type array_36b is array (natural range <>) of std_logic_vector(35 downto 0);  
  type array_32b is array (natural range <>) of std_logic_vector(31 downto 0);
  type array_34b is array (natural range <>) of std_logic_vector(33 downto 0);
  type array_11b is array (natural range <>) of std_logic_vector(10 downto 0);
  type array_8b  is array (natural range <>) of std_logic_vector(7 downto 0);
  type array_2d_5b is array (natural range <>, natural range <>) of std_logic_vector(4 downto 0); 
  type array_5b  is array (natural range <>) of std_logic_vector(4 downto 0);  
  type array_4b  is array (natural range <>) of std_logic_vector(3 downto 0);
  type array_3b  is array (natural range <>) of std_logic_vector(2 downto 0);  
  type array_2b  is array (natural range <>) of std_logic_vector(1 downto 0);  

  
--Some types combined from GBT / lpgbt package, to avoid conflicts removed them from both.
    type txrx20b_type 				        is array (natural range <>) of std_logic_vector(19 downto 0);
    type txrx40b_type 				        is array (natural range <>) of std_logic_vector(39 downto 0);
    type txrx116b_type 				        is array (natural range <>) of std_logic_vector(115 downto 0);
    type txrx2b_type 				        is array (natural range <>) of std_logic_vector(1 downto 0);
    type txrx32b_type                         is array (natural range <>) of std_logic_vector(31 downto 0);
    type txrx230b_type                         is array (natural range <>) of std_logic_vector(229 downto 0);
    type txrx224b_type                         is array (natural range <>) of std_logic_vector(223 downto 0);
    type txrx10b_type                         is array (natural range <>) of std_logic_vector(9 downto 0);
    type txrx120b_type 					is array (natural range <>) of std_logic_vector(119 downto 0);
    type txrx116b_24ch_type 				is array (23 downto 0) of std_logic_vector(115 downto 0);
    type txrx116b_12ch_type 				is array (11 downto 0) of std_logic_vector(115 downto 0);

  -- GTH PLL selection
  -- When using GREFCLK, QPLL should be used
  -- use CPLL for VC-709 and BNL-711
  -- use QPLL for HTG-710 (cannot use dedicated clock pin) <- this has WORSE jitter performance
    constant CPLL                                         : std_logic := '0';
    constant QPLL                                         : std_logic := '1';
  
  constant FIRMWARE_MODE_GBT   : integer := 0;-- 0: GBT mode        
  constant FIRMWARE_MODE_FULL  : integer := 1;-- 1: FULL mode         
  constant FIRMWARE_MODE_LTDB  : integer := 2;-- 2: LTDB mode (GBT mode with only IC/EC/Aux)
  constant FIRMWARE_MODE_FEI4  : integer := 3;-- 3: FEI4 / RD53A         
  constant FIRMWARE_MODE_PIXEL : integer := 4;-- 4: ITK Pixel (RD53B)        
  constant FIRMWARE_MODE_STRIP : integer := 5;-- 5: ITK Strip         
  constant FIRMWARE_MODE_FELIG : integer := 6;-- 6: FELIG             
  constant FIRMWARE_MODE_FMEMU : integer := 7;-- 7: FULL mode emulator
  constant FIRMWARE_MODE_MROD  : integer := 8; --8: FELIX mrod (2Gb/s S-links) mode.
  constant FIRMWARE_MODE_LPGBT : integer := 9; --9: LPGBT mode
  constant FIRMWARE_MODE_INTERLAKEN : integer := 10; --10: 25Gb/s interlaken links
  
  type IntArray is array (natural range<>) of integer;
  constant MAX_GROUPS_PER_STREAM_FROMHOST : integer := 8;
    type IntArray2D is array (natural range<>) of IntArray(0 to MAX_GROUPS_PER_STREAM_FROMHOST-1);
  constant STREAMS_TOHOST_MODE : IntArray(0 to 10) :=
  (
  42, --GBT mode: 40 EPaths + IC + EC + TTCToHost + BusyXoff
  1,  --FULL mode: + TTCToHost + BusyXoff 
  5,  --LTDB mode: 
  42, --FEI4 (tbd)
  30,  --ITK Pixel 28 EPaths + IC + EC 
  30,  --ITK Strip - IC/EC + 7 egroups * 4 channels (320 Mbps 8b10b)
  42,  --FELIG
  42,  --FMEmu
  42,  --FELIX mrod
  30,   --LPGBT mode: 28 EPaths + IC + EC
  1    -- Interlaken mode 
  );
  constant STREAMS_FROMHOST_MODE : IntArray2D(0 to 10) :=
  (
      (8,8,8,8,8,2,0,0), --GBT mode: 40 EPaths + IC + EC divided into 6 groups (5x8 + 1x2)
      (8,8,8,8,8,2,0,0), --FULL mode: 40 EPaths + IC + EC
      (8,8,8,8,8,2,0,0), --LTDB mode:  ??
      (8,8,8,8,8,2,0,0), -- FEI4: 40 EPaths + IC + EC
      (4,4,4,4,2,0,0,0), -- ITK Pixel: 16 EPATH = 4x4 + IC + EC.     
      (5,5,5,5,2,0,0,0), -- ITK Strip: lpGBT mode + IC/EC
      (8,8,8,8,8,2,0,0), -- FELIG
      (8,8,8,8,8,2,0,0), -- FMEmu
      (8,8,8,8,8,2,0,0), -- FELIX mrod
      (4,4,4,4,2,0,0,0), -- LPGBT mode  16 EPATH = 4x4 + IC + EC
      (1,0,0,0,0,0,0,0)  -- Interlaken mode
  );
  
  --sum up all numbers in an IntArray
  function sum(constant x : IntArray) return integer;

  --To go from nenory depth to number of address bits
  function f_log2 (constant x : positive) return natural; 
  function div_ceil(a : natural; b : positive) return natural;
  
  type TTCin_data_type is record
        L1A                 : std_logic; --bit 0
        Bchan               : std_logic; --bit 1
        BCR                 : std_logic; --bit 2
        ECR                 : std_logic; -- bit 3
        Brcst               : std_logic_vector(5 downto 0); --[7...2] bits 4-9 
        Brcst_latched       : std_logic_vector(5 downto 0); -- [7..2] bits 10-15
        ExtendedTestPulse   : std_logic; -- bit 16
    end record;
    
    constant TTCin_zero : TTCin_data_type := (L1A => '0', Bchan => '0', BCR => '0', ECR => '0', Brcst => (others => '0'), Brcst_latched => (others => '0'), ExtendedTestPulse => '0');
    
    --IG type TTCin_array_type is array ( NATURAL RANGE <>) of std_logic_vector(9 downto 0);
    --RL type TTCin_array_type is array ( NATURAL RANGE <>) of std_logic_vector(10 downto 0); -- IG: add the extended Test Pulse signal
    --type TTCin_array_type is array ( NATURAL RANGE <>) of TTCin_data_type; -- RL add the 6 latch signals
    
  
  
end FELIX_package;

package body FELIX_package is
    function sum(constant x : IntArray) return integer is
        variable xsum : integer;
    begin
        xsum := 0;
        for i in x'range loop
            xsum := xsum + x(i);
        end loop;
        return xsum;
    end function;

    function f_log2 (constant x : positive) return natural is
        variable i : natural;
    begin
        i := 0;
        while (2**i < x) and i < 31 loop
            i := i + 1;
        end loop;
        return i;
    end function;

--! integer division; always round-up
--! calculates: ceil(a / b)
    function div_ceil(a : natural; b : positive) return natural is
    begin
        return (a + (b - 1)) / b;
    end function;

end FELIX_package;
