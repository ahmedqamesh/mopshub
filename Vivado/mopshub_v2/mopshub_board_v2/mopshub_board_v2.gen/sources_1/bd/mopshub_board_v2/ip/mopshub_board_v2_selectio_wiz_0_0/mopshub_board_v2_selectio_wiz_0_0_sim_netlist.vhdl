-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 12:31:19 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dcs/git/mopshub/Vivado/mopshub_v2/mopshub_board_v2/mopshub_board_v2.gen/sources_1/bd/mopshub_board_v2/ip/mopshub_board_v2_selectio_wiz_0_0/mopshub_board_v2_selectio_wiz_0_0_sim_netlist.vhdl
-- Design      : mopshub_board_v2_selectio_wiz_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bitslip : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_in : in STD_LOGIC;
    clk_div_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz : entity is "mopshub_board_v2_selectio_wiz_0_0_selectio_wiz";
  attribute SYS_W : integer;
  attribute SYS_W of mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz : entity is 1;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz : entity is 2;
end mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz;

architecture STRUCTURE of mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz is
  signal data_in_from_pins_int : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q3_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q4_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \pins[0].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \pins[0].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[0].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \pins[0].iserdese2_master\ : label is "MLO";
begin
\pins[0].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(0),
      IB => data_in_from_pins_n(0),
      O => data_in_from_pins_int
    );
\pins[0].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 2,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(0),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in,
      CLKB => clk_in,
      CLKDIV => clk_div_in,
      CLKDIVP => '0',
      D => data_in_from_pins_int,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[0].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(1),
      Q2 => data_in_to_device(0),
      Q3 => \NLW_pins[0].iserdese2_master_Q3_UNCONNECTED\,
      Q4 => \NLW_pins[0].iserdese2_master_Q4_UNCONNECTED\,
      Q5 => \NLW_pins[0].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[0].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mopshub_board_v2_selectio_wiz_0_0 is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bitslip : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_in : in STD_LOGIC;
    clk_div_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mopshub_board_v2_selectio_wiz_0_0 : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of mopshub_board_v2_selectio_wiz_0_0 : entity is 2;
  attribute SYS_W : integer;
  attribute SYS_W of mopshub_board_v2_selectio_wiz_0_0 : entity is 1;
end mopshub_board_v2_selectio_wiz_0_0;

architecture STRUCTURE of mopshub_board_v2_selectio_wiz_0_0 is
  attribute DEV_W of inst : label is 2;
  attribute SYS_W of inst : label is 1;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of inst : label is 2;
begin
inst: entity work.mopshub_board_v2_selectio_wiz_0_0_mopshub_board_v2_selectio_wiz_0_0_selectio_wiz
     port map (
      bitslip(0) => bitslip(0),
      clk_div_in => clk_div_in,
      clk_in => clk_in,
      data_in_from_pins_n(0) => data_in_from_pins_n(0),
      data_in_from_pins_p(0) => data_in_from_pins_p(0),
      data_in_to_device(1 downto 0) => data_in_to_device(1 downto 0),
      io_reset => io_reset
    );
end STRUCTURE;
