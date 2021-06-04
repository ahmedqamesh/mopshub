//
// Verilog Module mopshub_lib.nodedemux
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:00:37 01/04/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module node_tra_demux( 
   // Port Declarations
   input   wire    [4:0]  bus_tra_select, 
   input   wire           enable_cs, 
   output  wire           can_tra9, 
   output  wire           can_tra18, 
   output  wire           can_tra19, 
   output  wire           can_tra20, 
   output  wire           can_tra21, 
   output  wire           can_tra22, 
   output  wire           can_tra23, 
   output  wire           can_tra24, 
   output  wire           can_tra4, 
   output  wire           can_tra5, 
   output  wire           can_tra6, 
   output  wire           can_tra7, 
   output  wire           can_tra8, 
   output  wire           can_tra10, 
   output  wire           can_tra11, 
   output  wire           can_tra12, 
   output  wire           can_tra13, 
   output  wire           can_tra14, 
   output  wire           can_tra15, 
   output  wire           can_tra16, 
   output  wire           can_tra17, 
   output  wire           can_tra0, 
   output  wire           can_tra1, 
   output  wire           can_tra2, 
   output  wire           can_tra3, 
   output  wire           can_tra26, 
   output  wire           can_tra27, 
   output  wire           can_tra28, 
   output  wire           can_tra29, 
   output  wire           can_tra30, 
   output  wire           can_tra31, 
   output  wire           can_tra25
);


// Internal Declarations
reg [31:0] can_tra_reg ;

assign can_tra9 = can_tra_reg[9];
assign can_tra18 = can_tra_reg[18];
assign can_tra19 = can_tra_reg[19];
assign can_tra20 = can_tra_reg[20];
assign can_tra21 = can_tra_reg[21];
assign can_tra22 = can_tra_reg[22];
assign can_tra23 = can_tra_reg[23];
assign can_tra24 = can_tra_reg[24];
assign can_tra4 = can_tra_reg[4];
assign can_tra5 = can_tra_reg[5];
assign can_tra6 = can_tra_reg[6];
assign can_tra7 = can_tra_reg[7];
assign can_tra8 = can_tra_reg[8];
assign can_tra10 = can_tra_reg[10];
assign can_tra11 = can_tra_reg[11];
assign can_tra12 = can_tra_reg[12];
assign can_tra13 = can_tra_reg[13];
assign can_tra14 = can_tra_reg[14];
assign can_tra15 = can_tra_reg[15];
assign can_tra16 = can_tra_reg[16];
assign can_tra17 = can_tra_reg[17];
assign can_tra0 = can_tra_reg[0];
assign can_tra1 = can_tra_reg[1];
assign can_tra2 = can_tra_reg[2];
assign can_tra3 = can_tra_reg[3];
assign can_tra26 = can_tra_reg[26];
assign can_tra27 = can_tra_reg[27];
assign can_tra28 = can_tra_reg[28];
assign can_tra29 = can_tra_reg[29];
assign can_tra30 = can_tra_reg[30];
assign can_tra31 = can_tra_reg[31];
assign can_tra25 = can_tra_reg[25];


// ### Please start your Verilog code here ### 
always @(bus_tra_select or enable_cs)
  begin
    // default values
    can_tra_reg  = 31'b0;
    case(bus_tra_select)//case statement with "bus_tra_select" 
      5'h0:can_tra_reg[0] = enable_cs;
      5'h1:can_tra_reg[1] = enable_cs;
      5'h2:can_tra_reg[2] = enable_cs;
      5'h3:can_tra_reg[3] = enable_cs;
      5'h4:can_tra_reg[4]= enable_cs;
      5'h5:can_tra_reg[5] = enable_cs;
      5'h6:can_tra_reg[6] = enable_cs;
      5'h7:can_tra_reg[7] = enable_cs;
      5'h8:can_tra_reg[8] = enable_cs;
      5'h9:can_tra_reg[9] = enable_cs;
      5'hA:can_tra_reg[10] = enable_cs;
      5'hB:can_tra_reg[11] = enable_cs;
      5'hC:can_tra_reg[12] = enable_cs;
      5'hD:can_tra_reg[13] = enable_cs;
      5'hE:can_tra_reg[14] = enable_cs;
      5'hF:can_tra_reg[15] = enable_cs;
      5'h10:can_tra_reg[16] = enable_cs;
      5'h11:can_tra_reg[17] = enable_cs;
      5'h12:can_tra_reg[18] = enable_cs;
      5'h13:can_tra_reg[19] = enable_cs;
      5'h14:can_tra_reg[20] = enable_cs;
      5'h15:can_tra_reg[21] = enable_cs;
      5'h16:can_tra_reg[22] = enable_cs;
      5'h17:can_tra_reg[23] = enable_cs;
      5'h18:can_tra_reg[24] = enable_cs;
      5'h19:can_tra_reg[25] = enable_cs;
      5'h1A:can_tra_reg[26] = enable_cs;
      5'h1B:can_tra_reg[27] = enable_cs;
      5'h1C:can_tra_reg[28] = enable_cs;
      5'h1D:can_tra_reg[29] = enable_cs;
      5'h1E:can_tra_reg[30] = enable_cs;
      5'h1F:can_tra_reg[31] = enable_cs;
    endcase
  end
endmodule
