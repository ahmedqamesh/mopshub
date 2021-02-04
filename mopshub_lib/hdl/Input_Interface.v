//
// Verilog Module mopshub_lib.Input_Interface
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:23:31 02/04/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module canopen_Interface( 
   input   wire    [75:0]  data_tra_in, 
   output  wire    [75:0]  data_rec_out, 
   output  wire    [75:0]  tra_mes_can,   // data to be sent on the CAN bus which is stores in transmit message buffer 
   input   wire    [75:0]  rec_mes_can,   //  complete incoming message from the CAN bus stores in receive message buffer register 
   output  wire            en_tra_reg     // enable transfer buffer register 
);


// Internal Declarations
endmodule
