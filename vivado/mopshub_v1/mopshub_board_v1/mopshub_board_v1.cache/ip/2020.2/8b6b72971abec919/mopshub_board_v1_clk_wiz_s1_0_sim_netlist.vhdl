-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 14:33:46 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mopshub_board_v1_clk_wiz_s1_0_sim_netlist.vhdl
-- Design      : mopshub_board_v1_clk_wiz_s1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_board_v1_clk_wiz_s1_0_clk_wiz is
  port (
    clk_40 : out STD_LOGIC;
    clk_m : out STD_LOGIC;
    clk_rx : out STD_LOGIC;
    clk_tx : out STD_LOGIC;
    clk_elink : out STD_LOGIC;
    clk_uart : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_board_v1_clk_wiz_s1_0_clk_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_board_v1_clk_wiz_s1_0_clk_wiz is
  signal clk_40_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clk_elink_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clk_in1_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clk_m_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clk_rx_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clk_tx_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clk_uart_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clkfbout_buf_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal clkfbout_mopshub_board_v1_clk_wiz_s1_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufgds : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufgds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufgds : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufgds : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout4_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout5_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout6_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_mopshub_board_v1_clk_wiz_s1_0,
      O => clkfbout_buf_mopshub_board_v1_clk_wiz_s1_0
    );
clkin1_ibufgds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1_p,
      IB => clk_in1_n,
      O => clk_in1_mopshub_board_v1_clk_wiz_s1_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_40_mopshub_board_v1_clk_wiz_s1_0,
      O => clk_40
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_m_mopshub_board_v1_clk_wiz_s1_0,
      O => clk_m
    );
clkout3_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_rx_mopshub_board_v1_clk_wiz_s1_0,
      O => clk_rx
    );
clkout4_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_tx_mopshub_board_v1_clk_wiz_s1_0,
      O => clk_tx
    );
clkout5_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_elink_mopshub_board_v1_clk_wiz_s1_0,
      O => clk_elink
    );
clkout6_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_uart_mopshub_board_v1_clk_wiz_s1_0,
      O => clk_uart
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 32.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 5.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 32.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 16,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 8,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 16,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 32,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 111,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 5,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_mopshub_board_v1_clk_wiz_s1_0,
      CLKFBOUT => clkfbout_mopshub_board_v1_clk_wiz_s1_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_mopshub_board_v1_clk_wiz_s1_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_40_mopshub_board_v1_clk_wiz_s1_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk_m_mopshub_board_v1_clk_wiz_s1_0,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => clk_rx_mopshub_board_v1_clk_wiz_s1_0,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => clk_tx_mopshub_board_v1_clk_wiz_s1_0,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => clk_elink_mopshub_board_v1_clk_wiz_s1_0,
      CLKOUT5 => clk_uart_mopshub_board_v1_clk_wiz_s1_0,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_40 : out STD_LOGIC;
    clk_m : out STD_LOGIC;
    clk_rx : out STD_LOGIC;
    clk_tx : out STD_LOGIC;
    clk_elink : out STD_LOGIC;
    clk_uart : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_board_v1_clk_wiz_s1_0_clk_wiz
     port map (
      clk_40 => clk_40,
      clk_elink => clk_elink,
      clk_in1_n => clk_in1_n,
      clk_in1_p => clk_in1_p,
      clk_m => clk_m,
      clk_rx => clk_rx,
      clk_tx => clk_tx,
      clk_uart => clk_uart,
      locked => locked
    );
end STRUCTURE;
