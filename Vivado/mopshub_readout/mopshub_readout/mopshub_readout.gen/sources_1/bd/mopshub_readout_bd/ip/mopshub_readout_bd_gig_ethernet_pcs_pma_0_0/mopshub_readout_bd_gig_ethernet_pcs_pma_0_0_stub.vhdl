-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 12:55:13 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_gig_ethernet_pcs_pma_0_0/mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_stub.vhdl
-- Design      : mopshub_readout_bd_gig_ethernet_pcs_pma_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_readout_bd_gig_ethernet_pcs_pma_0_0 is
  Port ( 
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    gtpowergood : out STD_LOGIC;
    signal_detect : in STD_LOGIC
  );

end mopshub_readout_bd_gig_ethernet_pcs_pma_0_0;

architecture stub of mopshub_readout_bd_gig_ethernet_pcs_pma_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gtrefclk_p,gtrefclk_n,gtrefclk_out,txp,txn,rxp,rxn,resetdone,userclk_out,userclk2_out,rxuserclk_out,rxuserclk2_out,independent_clock_bufg,pma_reset_out,mmcm_locked_out,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],status_vector[15:0],reset,gtpowergood,signal_detect";
begin
end;
