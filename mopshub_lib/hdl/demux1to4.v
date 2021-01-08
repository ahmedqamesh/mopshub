//
// Verilog Module mopshub_lib.demux1to4
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:57:01 01/06/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

//Verilog module for 1:4 DEMUX
module demux1to4(
     Data_in,
     sel,
    Data_out_0,
    Data_out_1,
    Data_out_2,
    Data_out_3
    );

//list the inputs and their sizes
    input Data_in;
    input [1:0] sel;
//list the outputs and their sizes 
    output Data_out_0;
     output Data_out_1;
    output Data_out_2;
    output Data_out_3;
//Internal variables
    reg Data_out_0;
     reg Data_out_1;
    reg Data_out_2;
    reg Data_out_3;  

//always block with Data_in and sel in its sensitivity list
    always @(Data_in or sel)
    begin
        case (sel)  //case statement with "sel"
        //multiple statements can be written inside each case.
        //you just have to use 'begin' and 'end' keywords as shown below.
            2'b00 : begin
                        Data_out_0 = Data_in;
                        Data_out_1 = 0;
                        Data_out_2 = 0;
                        Data_out_3 = 0;
                      end
            2'b01 : begin
                        Data_out_0 = 0;
                        Data_out_1 = Data_in;
                        Data_out_2 = 0;
                        Data_out_3 = 0;
                      end
            2'b10 : begin
                        Data_out_0 = 0;
                        Data_out_1 = 0;
                        Data_out_2 = Data_in;
                        Data_out_3 = 0;
                      end
            2'b11 : begin
                        Data_out_0 = 0;
                        Data_out_1 = 0;
                        Data_out_2 = 0;
                        Data_out_3 = Data_in;
                      end
        endcase
    end
    
endmodule
