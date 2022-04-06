--! This file is part of the FELIX firmware distribution (https://gitlab.cern.ch/atlas-tdaq-felix/firmware/).
--! Copyright (C) 2001-2021 CERN for the benefit of the ATLAS collaboration.
--! Authors:
--!               Marius Wensing
--!               Frans Schreuder
--!               Nico Giangiacomi
--!               mtrovato
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.axi_stream_package.all;
use work.FELIX_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EncodingEpathLPGBT is
 generic (
    MAX_OUTPUT		 : integer := 8;
    INCLUDE_8b     : std_logic := '1';
    INCLUDE_4b     : std_logic := '1';
    INCLUDE_2b     : std_logic := '1';
    INCLUDE_8b10b  : std_logic := '1';
    INCLUDE_HDLC   : std_logic := '1';
    INCLUDE_DIRECT : std_logic := '1';
    INCLUDE_TTC    : std_logic := '1'; 
    INCLUDE_RD53    : std_logic := '1';    
    BLOCKSIZE      : integer := 1024;
    GENERATE_FEI4B  : boolean := false;
    GENERATE_LCB_ENC : boolean := false;
    HDLC_IDLE_STATE : std_logic_vector(7 downto 0) := x"7F"; --IG: determine the HDLC line idle state. for EC: 0x7F, for IC: 0xFF
    SUPPORT_HDLC_DELAY : boolean := false;
    --MT
    PCIE_ENDPOINT                   : integer := 0;
    LINK                            : integer := 0;
    EGROUP                          : integer := 0;
    EPATH                           : integer := 0        
    
    
 );
 port (
  clk40             : in std_logic; --BC clock for DataIn
  reset             : in std_logic; --Acitve high reset
  EpathEnable       : in std_logic; --From register map
  EpathEncoding     : in std_logic_vector(3 downto 0); --0: direct, 1: 8b10b, 2: HDLC, 3:
                                                   --TTC, 4: RD53
  ElinkWidth        : in std_logic_vector(1 downto 0); --runtime configuration: 0:2, 1:4, 2:8, 
  MsbFirst          : in std_logic; --Default 1, make 0 to reverse the bit order
  ReverseOutputBits : in std_logic; --Default 0, reverse the bits of the output Elink
  ElinkData         : out std_logic_vector(MAX_OUTPUT-1 downto 0);
  Xoff              : in std_logic;
  epath_almost_full : out std_logic;
  s_axis            : in  axis_8_type;  --FIFO read port (axi stream)
  s_axis_tready     : out std_logic; --FIFO read tready (axi stream)
  s_axis_aclk       : in std_logic; --FIFO read clock (axi stream)
  EnableHDLCDelay   : in std_logic;
  TTCOption         : in std_logic_vector(3 downto 0);
  TTCin             : in  TTCin_data_type; --IG: bit #10 is the NSW extended Test Pulse
  enAZ_in     : in std_logic; --enable AutoZeroing module for SyncFE

  CalTrigSeq_in       : in std_logic_vector(15 downto 0);
  ReadAddrCalTrigSeq_out : out std_logic_vector(4 downto 0);
  
  --debug info/from to regmap    
  ref_dly_genCalTrig_in  : in std_logic_vector(7 downto 0);
  ref_cmd_in             : in std_logic_vector(15 downto 0);  
  cnt_cmd_out            : out std_logic_vector(31 downto 0);  
  cnt_trig_cmd_out       : out std_logic_vector(31 downto 0);
  err_genCalTrig_dly_out : out std_logic_vector(7 downto 0);
  cnt_time_firstTolastTrig_out : out std_logic_vector(31 downto 0)
  
  
  );
end EncodingEpathLPGBT;

architecture Behavioral of EncodingEpathLPGBT is

	signal AxiStreamToByteDataOut : std_logic_vector(7 downto 0);
	signal AxiStreamToByteDataValidOut : std_logic;
	signal AxiStreamToByteEOPOut : std_logic;
	signal AxiStreamToByteTreadyin : std_logic;
	
	signal Encoder8b10bDataOut : std_logic_vector(9 downto 0);
	signal Encoder8b10bTreadyOut	: std_logic;

	signal EncoderRD53DataOut       : std_logic_vector(3 downto 0);
	signal EncoderRD53TreadyOut	: std_logic;

	signal GearBoxInputwidth : std_logic; -- 0:8b, 1:10b
	signal GearBoxDataIn : std_logic_vector(9 downto 0); 
	signal GearBoxReadyOut : std_logic;
	signal GearBoxElinkData : std_logic_vector(MAX_OUTPUT-1 downto 0):= (others => '0');

	signal TTCElinkData : std_logic_vector(MAX_OUTPUT-1 downto 0);
	signal TTCEnable_i : std_logic;
	signal EncoderHDLCTreadyOut : std_logic;
	signal EncoderHDLCDataOut : std_logic_vector(1 downto 0);
	
begin
g_includeEpath: if (
  (MAX_OUTPUT = 2 and INCLUDE_2b = '1') or
  (MAX_OUTPUT = 4 and (INCLUDE_2b = '1' or INCLUDE_4b = '1')) or
  (MAX_OUTPUT = 8 and (INCLUDE_2b = '1' or INCLUDE_4b = '1' or INCLUDE_8b = '1')) or
  INCLUDE_RD53 = '1'
  ) generate

TTCEnable_i <= '1' when (EpathEncoding = x"3") else '0';

g_EncodingGearBox: if INCLUDE_DIRECT = '1' or INCLUDE_8b10b = '1' generate
gearbox0: entity work.EncodingGearBox
generic map(
    MAX_OUTPUT        => MAX_OUTPUT,
    MAX_INPUT         => 10,
    SUPPORT_OUTPUT    => INCLUDE_8b & INCLUDE_4b & INCLUDE_2b,
    SUPPORT_INPUT     => INCLUDE_8b10b & (INCLUDE_HDLC or INCLUDE_DIRECT)  --MT use support_input(0)=1 for rd53aenc
)
port map(
    Reset             => reset,
    clk40             => clk40,
    
    ELinkData         => GearBoxElinkData, 
    ElinkWidth        => ElinkWidth,
    MsbFirst          => MsbFirst,
    ReverseOutputBits => ReverseOutputBits,
    
    DataIn            => GearBoxDataIn,
    InputWidth        => GearBoxInputwidth, --: in std_logic_vector(2 downto 0); --runtime configuration: 0:8, 1:10, 2:20, 3:40, 4:66
    
    ReadyOut          => GearBoxReadyOut
);
end generate;
	
g_includeTTC: if INCLUDE_TTC = '1' generate
  EncoderTTC0: entity work.EncoderTTC 
    generic map(
      MAX_OUTPUT => MAX_OUTPUT
      )
    port Map ( 
      clk40	 => clk40,
      enable	 => TTCEnable_i,
      TTCOption	 => TTCOption,
      TTCin	 => TTCin,
      ElinkOut   => TTCElinkData
      );
end generate;    
    
g_include8b10b: if INCLUDE_8b10b = '1' generate
    Encoder8b10b0: entity work.Encoder8b10b 
    Generic map (
        GENERATE_FEI4B => GENERATE_FEI4B,
        GENERATE_LCB_ENC => GENERATE_LCB_ENC
    )
    port map( 
            reset => reset,
            clk40 => clk40,
            EnableIn => EpathEnable,
            DataIn => AxiStreamToByteDataOut,
            DataInValid => AxiStreamToByteDataValidOut,
            EOP_in => AxiStreamToByteEOPOut,
            toHostXoff => Xoff,
            readyIn => GearBoxReadyOut,
            readyOut => Encoder8b10bTreadyOut,
            DataOut => Encoder8b10bDataOut
     );
end generate; --INCLUDE_8b10b

g_includeHDLC: if INCLUDE_HDLC = '1' generate
    EncoderHDLC0: entity work.EncoderHDLC 
    generic map(
        HDLC_IDLE_STATE => HDLC_IDLE_STATE, --: std_logic_vector(7 downto 0) := (others=>'1') --IG: determine the HDLC line idle state. for EC: 0x7F, for IC: 0xFF
        SUPPORT_DELAY => SUPPORT_HDLC_DELAY
    )
    port map(
        clk40 => clk40,
        EnableIn => EpathEnable,
        EnableDelay => EnableHDLCDelay,
        DataIn => AxiStreamToByteDataOut,
        DataInValid => AxiStreamToByteDataValidOut, 
        EOP_in => AxiStreamToByteEOPOut,   
        readyOut => EncoderHDLCTreadyOut, 
        DataOut => EncoderHDLCDataOut,
        rst         => reset 
  );
end generate; --INCLUDE_HDLC

--MT added: AXI to 4b-Elink (gearbox bypassed). ElinkWidth doesn't matter here.
--Set ElinkWidth="01" otherwise EgroupData in EncodingEgroup doesn't make sense
g_EncoderRD53: if INCLUDE_RD53 = '1' generate
    EncoderHDLC0: entity work.EncoderHDLC 
    generic map(
        HDLC_IDLE_STATE => HDLC_IDLE_STATE, --: std_logic_vector(7 downto 0) := (others=>'1') --IG: determine the HDLC line idle state. for EC: 0x7F, for IC: 0xFF
        SUPPORT_DELAY => SUPPORT_HDLC_DELAY
    )
    port map(
        clk40 => clk40,
        EnableIn => EpathEnable,
        EnableDelay => EnableHDLCDelay,
        DataIn => AxiStreamToByteDataOut,
        DataInValid => AxiStreamToByteDataValidOut, 
        EOP_in => AxiStreamToByteEOPOut,   
        readyOut => EncoderHDLCTreadyOut, 
        DataOut => EncoderHDLCDataOut,
        rst         => reset 
  );
end generate; --INCLUDE_HDLC
--

--MT
--Encoding_mux: process(GearBoxReadyOut, EpathEncoding, EpathEnable, GearBoxElinkData, AxiStreamToByteDataOut, Encoder8b10bDataOut, Encoder8b10bTreadyOut, TTCElinkData, EncoderHDLCDataOut, EncoderHDLCTreadyOut)
Encoding_mux: process(GearBoxReadyOut, EpathEncoding, EpathEnable, GearBoxElinkData, AxiStreamToByteDataOut, Encoder8b10bDataOut, Encoder8b10bTreadyOut, TTCElinkData, EncoderHDLCDataOut, EncoderHDLCTreadyOut, EncoderRD53DataOut, EncoderRD53TreadyOut)
begin
    if EpathEncoding = x"0" and INCLUDE_DIRECT = '1' and EpathEnable = '1' then
        ElinkData                   <= GearBoxElinkData;
        GearBoxDataIn               <= "00" & AxiStreamToByteDataOut;
        GearBoxInputwidth           <= '0';
        AxiStreamToByteTreadyin     <= GearBoxReadyOut;
    elsif EpathEncoding = x"1" and INCLUDE_8b10b = '1'  and EpathEnable = '1' then
        ElinkData                   <= GearBoxElinkData;
        GearBoxDataIn               <= Encoder8b10bDataOut;
        GearBoxInputwidth           <= '1';
        AxiStreamToByteTreadyin     <= Encoder8b10bTreadyOut;
    elsif EpathEncoding = x"2" and INCLUDE_HDLC = '1'  and EpathEnable = '1' then --bypassing gearbox
        ElinkData(1 downto 0)       <= EncoderHDLCDataOut;
        ElinkData(MAX_OUTPUT-1 downto 2) <= (others => '0');
        GearBoxDataIn               <= (others => '0');
        GearBoxInputwidth           <= '0';
        AxiStreamToByteTreadyin     <= EncoderHDLCTreadyOut;
    elsif EpathEncoding = x"3" and INCLUDE_TTC = '1'  and EpathEnable = '1' then
        ElinkData                   <= TTCElinkData(MAX_OUTPUT -1 downto 0);
        GearBoxDataIn               <= (others => '0');
        GearBoxInputwidth           <= '0';
        AxiStreamToByteTreadyin     <= '1';
        --MT added --bypassing gearbox since the 10b->4b gearbox is already in the ENCRD53
        --module. TO DO: merge the two gearboxes
    elsif EpathEncoding = x"4" and INCLUDE_RD53 = '1'  and EpathEnable = '1' and (MAX_OUTPUT = 4 or MAX_OUTPUT = 8) then
        ElinkData(3 downto 0)       <= EncoderRD53DataOut;
        ElinkData(MAX_OUTPUT-1 downto 4) <= (others => '0');--MT what happens if MAX_OUTPUT=4?
        GearBoxDataIn               <= (others => '0'); 
        GearBoxInputwidth           <= '0';
        AxiStreamToByteTreadyin     <= EncoderRD53TreadyOut;
        --
    else 
        AxiStreamToByteTreadyin         <= '1';
        ElinkData                       <= (others => '0');
        GearBoxDataIn                   <= (others => '0');
        GearBoxInputwidth               <= '1';
    end if;
end process;

fromAxis0: entity work.AxiStreamToByte
generic map(
    BYTES => 1,
    BLOCKSIZE => BLOCKSIZE
)
port map(
    clk40 => clk40,
    reset => reset,
    EnableIn => EpathEnable,
    s_axis => s_axis,
    s_axis_tready => s_axis_tready,
    s_axis_aclk => s_axis_aclk,
    
    m_axis_tready => AxiStreamToByteTreadyin,
    almost_full => epath_almost_full,
    
    DataOut => AxiStreamToByteDataOut,
    DataOutValid(0) => AxiStreamToByteDataValidOut,
    EOP(0) => AxiStreamToByteEOPOut
);
end generate g_includeEpath;
g_notincludeEpath: if not (
        (MAX_OUTPUT = 2 and INCLUDE_2b = '1') or
        (MAX_OUTPUT = 4 and (INCLUDE_2b = '1' or INCLUDE_4b = '1')) or
        (MAX_OUTPUT = 8 and (INCLUDE_2b = '1' or INCLUDE_4b = '1' or INCLUDE_8b = '1')) or
        INCLUDE_RD53 = '1'
        ) generate
  s_axis_tready <= '1'; --don't block the fifo        
  ElinkData <= (others => '0');
end generate g_notincludeEpath;



                   
end Behavioral;

