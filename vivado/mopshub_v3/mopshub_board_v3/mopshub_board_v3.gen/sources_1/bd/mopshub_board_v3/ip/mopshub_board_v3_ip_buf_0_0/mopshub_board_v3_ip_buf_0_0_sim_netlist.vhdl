-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Jun 12 22:52:14 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dcs/git/mopshub/Vivado/mopshub_v3/mopshub_board_v3/mopshub_board_v3.gen/sources_1/bd/mopshub_board_v3/ip/mopshub_board_v3_ip_buf_0_0/mopshub_board_v3_ip_buf_0_0_sim_netlist.vhdl
-- Design      : mopshub_board_v3_ip_buf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mopshub_board_v3_ip_buf_0_0_ip_buf is
  port (
    output_wire : out STD_LOGIC;
    input_wire : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mopshub_board_v3_ip_buf_0_0_ip_buf : entity is "ip_buf";
end mopshub_board_v3_ip_buf_0_0_ip_buf;

architecture STRUCTURE of mopshub_board_v3_ip_buf_0_0_ip_buf is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUF_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUF_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUF_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUF_inst : label is "AUTO";
begin
IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => input_wire,
      O => output_wire
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mopshub_board_v3_ip_buf_0_0 is
  port (
    input_wire : in STD_LOGIC;
    output_wire : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mopshub_board_v3_ip_buf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mopshub_board_v3_ip_buf_0_0 : entity is "mopshub_board_v3_ip_buf_0_0,ip_buf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mopshub_board_v3_ip_buf_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mopshub_board_v3_ip_buf_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mopshub_board_v3_ip_buf_0_0 : entity is "ip_buf,Vivado 2020.2";
end mopshub_board_v3_ip_buf_0_0;

architecture STRUCTURE of mopshub_board_v3_ip_buf_0_0 is
begin
inst: entity work.mopshub_board_v3_ip_buf_0_0_ip_buf
     port map (
      input_wire => input_wire,
      output_wire => output_wire
    );
end STRUCTURE;
