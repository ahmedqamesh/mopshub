//
// Verilog Module mopshub_lib.enc8b10_wrap
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 18:34:27 03/03/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module enc8b10b_wrap (
    input   wire    clk,
    input   wire    rst,
    input   wire    [1:0]   dataCode,
    input   wire    [7:0]   dataIN,
    input   wire    dataINrdy,
    output  wire            encDataOutrdy,
    output  wire    [9:0]   encDataOut
);




reg [7:0] dataIN_s, byte ;
reg [1:0] dataCode_s = 'b11;



//-------------------------------------------------------------------------------------------
//-- data code cases
//-- 00"data, 01"eop, 10"sop, 11"comma
//-------------------------------------------------------------------------------------------

mux4_Nbit #(.N(8))INbitMUX( .data0(dataIN_s)
                         ,.data1(Kchar_eop) 
                         ,.data2(Kchar_sop) 
                         ,.data3(Kchar_comma) 
                         ,.sel(dataCode_s)    //select signal             
                         ,.data_out(byte)); //output Trig signal will enable reading from fifo (rd_en=1)
                         
// ### Please start your Verilog code here ### 

endmodule