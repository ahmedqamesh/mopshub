-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 14:11:02 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_v1/mopshub_board_v1/mopshub_board_v1.gen/sources_1/bd/mopshub_board_v1/ip/mopshub_board_v1_mopshub_top_board_16_0_0/mopshub_board_v1_mopshub_top_board_16_0_0_stub.vhdl
-- Design      : mopshub_board_v1_mopshub_top_board_16_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_board_v1_mopshub_top_board_16_0_0 is
  Port ( 
    clk_40 : in STD_LOGIC;
    clk_elink : in STD_LOGIC;
    clk_m : in STD_LOGIC;
    clk_uart : in STD_LOGIC;
    in_rx_serial : in STD_LOGIC;
    locked : in STD_LOGIC;
    miso_c : in STD_LOGIC;
    miso_m : in STD_LOGIC;
    mopshub_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    rx0 : in STD_LOGIC;
    rx1 : in STD_LOGIC;
    rx10 : in STD_LOGIC;
    rx11 : in STD_LOGIC;
    rx12 : in STD_LOGIC;
    rx13 : in STD_LOGIC;
    rx14 : in STD_LOGIC;
    rx15 : in STD_LOGIC;
    rx2 : in STD_LOGIC;
    rx3 : in STD_LOGIC;
    rx4 : in STD_LOGIC;
    rx5 : in STD_LOGIC;
    rx6 : in STD_LOGIC;
    rx7 : in STD_LOGIC;
    rx8 : in STD_LOGIC;
    rx9 : in STD_LOGIC;
    rx_elink2bit : in STD_LOGIC_VECTOR ( 1 downto 0 );
    shift_clk : in STD_LOGIC;
    shift_data : in STD_LOGIC;
    shift_mode : in STD_LOGIC;
    clk_out_n : out STD_LOGIC;
    clk_out_p : out STD_LOGIC;
    cs_c0 : out STD_LOGIC;
    cs_c1 : out STD_LOGIC;
    cs_c10 : out STD_LOGIC;
    cs_c11 : out STD_LOGIC;
    cs_c12 : out STD_LOGIC;
    cs_c13 : out STD_LOGIC;
    cs_c14 : out STD_LOGIC;
    cs_c15 : out STD_LOGIC;
    cs_c2 : out STD_LOGIC;
    cs_c3 : out STD_LOGIC;
    cs_c4 : out STD_LOGIC;
    cs_c5 : out STD_LOGIC;
    cs_c6 : out STD_LOGIC;
    cs_c7 : out STD_LOGIC;
    cs_c8 : out STD_LOGIC;
    cs_c9 : out STD_LOGIC;
    cs_m0 : out STD_LOGIC;
    cs_m1 : out STD_LOGIC;
    cs_m10 : out STD_LOGIC;
    cs_m11 : out STD_LOGIC;
    cs_m12 : out STD_LOGIC;
    cs_m13 : out STD_LOGIC;
    cs_m14 : out STD_LOGIC;
    cs_m15 : out STD_LOGIC;
    cs_m2 : out STD_LOGIC;
    cs_m3 : out STD_LOGIC;
    cs_m4 : out STD_LOGIC;
    cs_m5 : out STD_LOGIC;
    cs_m6 : out STD_LOGIC;
    cs_m7 : out STD_LOGIC;
    cs_m8 : out STD_LOGIC;
    cs_m9 : out STD_LOGIC;
    irq_can_rec : out STD_LOGIC;
    irq_can_tra : out STD_LOGIC;
    irq_elink_rec : out STD_LOGIC;
    irq_elink_tra : out STD_LOGIC;
    mosi_c : out STD_LOGIC;
    mosi_m : out STD_LOGIC;
    out_tx_serial : out STD_LOGIC;
    rx_data_rdy : out STD_LOGIC;
    sck_c : out STD_LOGIC;
    sck_m : out STD_LOGIC;
    simple_out : out STD_LOGIC;
    tmr_out : out STD_LOGIC;
    tx0 : out STD_LOGIC;
    tx1 : out STD_LOGIC;
    tx10 : out STD_LOGIC;
    tx11 : out STD_LOGIC;
    tx12 : out STD_LOGIC;
    tx13 : out STD_LOGIC;
    tx14 : out STD_LOGIC;
    tx15 : out STD_LOGIC;
    tx2 : out STD_LOGIC;
    tx3 : out STD_LOGIC;
    tx4 : out STD_LOGIC;
    tx5 : out STD_LOGIC;
    tx6 : out STD_LOGIC;
    tx7 : out STD_LOGIC;
    tx8 : out STD_LOGIC;
    tx9 : out STD_LOGIC;
    tx_data_rdy : out STD_LOGIC;
    tx_elink2bit : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end mopshub_board_v1_mopshub_top_board_16_0_0;

architecture stub of mopshub_board_v1_mopshub_top_board_16_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_40,clk_elink,clk_m,clk_uart,in_rx_serial,locked,miso_c,miso_m,mopshub_id[3:0],reset,rx0,rx1,rx10,rx11,rx12,rx13,rx14,rx15,rx2,rx3,rx4,rx5,rx6,rx7,rx8,rx9,rx_elink2bit[1:0],shift_clk,shift_data,shift_mode,clk_out_n,clk_out_p,cs_c0,cs_c1,cs_c10,cs_c11,cs_c12,cs_c13,cs_c14,cs_c15,cs_c2,cs_c3,cs_c4,cs_c5,cs_c6,cs_c7,cs_c8,cs_c9,cs_m0,cs_m1,cs_m10,cs_m11,cs_m12,cs_m13,cs_m14,cs_m15,cs_m2,cs_m3,cs_m4,cs_m5,cs_m6,cs_m7,cs_m8,cs_m9,irq_can_rec,irq_can_tra,irq_elink_rec,irq_elink_tra,mosi_c,mosi_m,out_tx_serial,rx_data_rdy,sck_c,sck_m,simple_out,tmr_out,tx0,tx1,tx10,tx11,tx12,tx13,tx14,tx15,tx2,tx3,tx4,tx5,tx6,tx7,tx8,tx9,tx_data_rdy,tx_elink2bit[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mopshub_top_board_16bus,Vivado 2020.2";
begin
end;
