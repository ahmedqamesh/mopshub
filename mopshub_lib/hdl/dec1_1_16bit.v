//
// Verilog Module mopshub_lib.dec1_Nbit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 10:08:22 10/31/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module dec1_1_16bit (
  input   wire            clk, 
  input   wire            rst, 
  input   wire          buffer_en,
  input   wire          rst_bus_sig,
  
  input  wire   [4:0]   bus_rec_select,
  input wire    [15:0]  data_rec_in,
  output wire   [15:0]  data_rec_out
);
reg   [15:0]  output_bus_reg;
initial output_bus_reg = 16'd0;

always@(posedge clk)
begin 
 if(!rst)output_bus_reg <= 16'd0;
 if(buffer_en) output_bus_reg  <= data_rec_in;
 else if(rst_bus_sig)
    case (bus_rec_select)
      5'h0  : output_bus_reg  <= {data_rec_in[15:1 ],1'b0};
      5'h1  : output_bus_reg  <= {data_rec_in[15:2 ],1'b0, data_rec_in[0   ]};
      5'h2  : output_bus_reg  <= {data_rec_in[15:3 ],1'b0, data_rec_in[1 :0]};
      5'h3  : output_bus_reg  <= {data_rec_in[15:4 ],1'b0, data_rec_in[2 :0]};   
      5'h4  : output_bus_reg  <= {data_rec_in[15:5 ],1'b0, data_rec_in[3 :0]};   
      5'h5  : output_bus_reg  <= {data_rec_in[15:6 ],1'b0, data_rec_in[4 :0]};    
      5'h6  : output_bus_reg  <= {data_rec_in[15:7 ],1'b0, data_rec_in[5 :0]};  
      5'h7  : output_bus_reg  <= {data_rec_in[15:8 ],1'b0, data_rec_in[6 :0]};
      5'h8  : output_bus_reg  <= {data_rec_in[15:9 ],1'b0, data_rec_in[7 :0]};    
      5'h9  : output_bus_reg  <= {data_rec_in[15:10],1'b0, data_rec_in[8 :0]};     
      5'hA  : output_bus_reg  <= {data_rec_in[15:11],1'b0, data_rec_in[9 :0]};  
      5'hB  : output_bus_reg  <= {data_rec_in[15:12],1'b0, data_rec_in[10:0]};     
      5'hC  : output_bus_reg  <= {data_rec_in[15:13],1'b0, data_rec_in[11:0]};  
      5'hD  : output_bus_reg  <= {data_rec_in[15:14],1'b0, data_rec_in[12:0]};
      5'hE  : output_bus_reg  <= {data_rec_in[15   ],1'b0, data_rec_in[13:0]};
      5'hF  : output_bus_reg  <= {1'b0, data_rec_in[14:0]};         
      default: output_bus_reg  <=  16'd0;
    endcase
  else output_bus_reg <= output_bus_reg;
end 
assign data_rec_out = output_bus_reg;  
endmodule
