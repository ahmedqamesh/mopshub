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
module dec1_Nbit (
  input   wire            clk, 
  input   wire            rst, 
  input   wire          buffer_en,
  input   wire          rst_bus_sig,
  
  input  wire   [4:0]   bus_rec_select,
  output wire   [31:0]  data_rec_in,
  output wire   [31:0]  data_rec_out
);
  reg   [31:0]  output_bus_reg = 32'd0;
  wire [31:0] data_rec_regVoted = output_bus_reg;
always@(posedge clk)
begin 
 if(!rst)
  begin
    output_bus_reg <= 32'd0;
  end
 if(buffer_en)
 begin
   output_bus_reg  <= data_rec_in;
 end
 else if(rst_bus_sig)
  case (bus_rec_select)
    5'h0 : begin 
      output_bus_reg  <= {data_rec_in[31:1],1'b0};
    end
    5'h1 : begin
      output_bus_reg  <= {data_rec_in[31:2],1'b0, data_rec_in[0]};
    end
    5'h2 : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'h3 : begin  
      output_bus_reg  <= data_rec_in;  
    end
    5'h4 : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'h5 : begin
      output_bus_reg  <= data_rec_in;      
    end
    5'h6 : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'h7 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h8 : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'h9 : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'hA : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'hB : begin  
      output_bus_reg  <= data_rec_in;      
    end
    5'hC : begin  
      output_bus_reg  <= data_rec_in;     
    end
    5'hD : begin  
      output_bus_reg  <= data_rec_in;
    end
    5'hE : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'hF : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h10 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h11 : begin 
      output_bus_reg  <= data_rec_in; 
    end
    5'h12 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h13 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h14 : begin  
      output_bus_reg  <= data_rec_in;
    end
    5'h15 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h16 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h17 : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h18 : begin 
      output_bus_reg  <= data_rec_in; 
    end
    5'h19 : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'h1A : begin 
      output_bus_reg  <= data_rec_in;
    end
    5'h1B : begin 
      output_bus_reg  <= data_rec_in; 
    end
    5'h1C : begin 
      output_bus_reg  <= data_rec_in;      
    end 
    5'h1D : begin 
      output_bus_reg  <= data_rec_in;     
    end
    5'h1E : begin 
      output_bus_reg  <= data_rec_in;      
    end
    5'h1F : begin 
      output_bus_reg  <= data_rec_in;      
    end
    default: begin 
      output_bus_reg  <=  32'd0;
    end    
  endcase
  else
  begin 
   output_bus_reg <= data_rec_regVoted;
  end
end 
assign data_rec_out = data_rec_regVoted;  
endmodule
