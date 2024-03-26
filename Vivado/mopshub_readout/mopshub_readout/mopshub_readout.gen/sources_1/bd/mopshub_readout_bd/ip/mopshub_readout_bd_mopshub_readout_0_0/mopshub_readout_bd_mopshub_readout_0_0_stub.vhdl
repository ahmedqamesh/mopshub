-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 13:04:19 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_mopshub_readout_0_0/mopshub_readout_bd_mopshub_readout_0_0_stub.vhdl
-- Design      : mopshub_readout_bd_mopshub_readout_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_readout_bd_mopshub_readout_0_0 is
  Port ( 
    clk125 : in STD_LOGIC;
    clk_40 : in STD_LOGIC;
    clk_rx : in STD_LOGIC;
    clk_tx : in STD_LOGIC;
    dbg_elink : in STD_LOGIC;
    dip_sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gmii_rx_dv : in STD_LOGIC;
    gmii_rx_er : in STD_LOGIC;
    gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mmcm_locked : in STD_LOGIC;
    reset : in STD_LOGIC;
    resetdone : in STD_LOGIC;
    rx_elink_n : in STD_LOGIC;
    rx_elink_p : in STD_LOGIC;
    clk_ipb : out STD_LOGIC;
    configuration_vector : out STD_LOGIC_VECTOR ( 4 downto 0 );
    gmii_tx_en : out STD_LOGIC;
    gmii_tx_er : out STD_LOGIC;
    gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    irq_can_rec : out STD_LOGIC;
    irq_can_tra : out STD_LOGIC;
    irq_elink_dbg : out STD_LOGIC;
    irq_elink_rec : out STD_LOGIC;
    led : out STD_LOGIC;
    rst_eth : out STD_LOGIC;
    rx_data_rdy : out STD_LOGIC;
    sfp_enable : out STD_LOGIC;
    tx_data_rdy : out STD_LOGIC;
    tx_elink_n : out STD_LOGIC;
    tx_elink_p : out STD_LOGIC;
    locked : in STD_LOGIC;
    clk_out_p : out STD_LOGIC;
    clk_out_n : out STD_LOGIC;
    counter_rst_mopshub : out STD_LOGIC_VECTOR ( 7 downto 0 );
    counter_disp_err : out STD_LOGIC_VECTOR ( 7 downto 0 );
    counter_code_err : out STD_LOGIC_VECTOR ( 7 downto 0 );
    osc_auto_trim_mopshub : in STD_LOGIC;
    endwait_all : in STD_LOGIC;
    rx0 : in STD_LOGIC;
    tx0 : out STD_LOGIC;
    clk_elink : in STD_LOGIC;
    irq_elink_tra : out STD_LOGIC;
    sysclk_n : in STD_LOGIC;
    sysclk_p : in STD_LOGIC;
    dec10b_in_dbg_uart : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_uart : in STD_LOGIC;
    out_tx_serial : out STD_LOGIC;
    in_rx_serial : in STD_LOGIC;
    clk_m : in STD_LOGIC;
    mopshub_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    counter_dec10b_in_rdy : out STD_LOGIC_VECTOR ( 7 downto 0 );
    counter_enc10b_out_rdy : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end mopshub_readout_bd_mopshub_readout_0_0;

architecture stub of mopshub_readout_bd_mopshub_readout_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk125,clk_40,clk_rx,clk_tx,dbg_elink,dip_sw[3:0],gmii_rx_dv,gmii_rx_er,gmii_rxd[7:0],mmcm_locked,reset,resetdone,rx_elink_n,rx_elink_p,clk_ipb,configuration_vector[4:0],gmii_tx_en,gmii_tx_er,gmii_txd[7:0],irq_can_rec,irq_can_tra,irq_elink_dbg,irq_elink_rec,led,rst_eth,rx_data_rdy,sfp_enable,tx_data_rdy,tx_elink_n,tx_elink_p,locked,clk_out_p,clk_out_n,counter_rst_mopshub[7:0],counter_disp_err[7:0],counter_code_err[7:0],osc_auto_trim_mopshub,endwait_all,rx0,tx0,clk_elink,irq_elink_tra,sysclk_n,sysclk_p,dec10b_in_dbg_uart[7:0],clk_uart,out_tx_serial,in_rx_serial,clk_m,mopshub_id[3:0],counter_dec10b_in_rdy[7:0],counter_enc10b_out_rdy[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mopshub_readout,Vivado 2020.2";
begin
end;
