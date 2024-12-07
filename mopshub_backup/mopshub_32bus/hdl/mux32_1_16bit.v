`resetall
`timescale 1ns/10ps
module mux32_1_16bit( 
  // Port Declarations
  input   wire            clk, 
  input   wire            rst, 
  input   wire    [15:0]  data0, 
  input   wire    [15:0]  data1, 
  input   wire    [15:0]  data2, 
  input   wire    [15:0]  data3, 
  input   wire    [15:0]  data4, 
  input   wire    [15:0]  data5, 
  input   wire    [15:0]  data6, 
  input   wire    [15:0]  data7, 
  input   wire    [15:0]  data8, 
  input   wire    [15:0]  data9, 
  input   wire    [15:0]  data10, 
  input   wire    [15:0]  data11, 
  input   wire    [15:0]  data12, 
  input   wire    [15:0]  data13, 
  input   wire    [15:0]  data14, 
  input   wire    [15:0]  data15, 
  input   wire    [15:0]  data16, 
  input   wire    [15:0]  data17, 
  input   wire    [15:0]  data18, 
  input   wire    [15:0]  data19, 
  input   wire    [15:0]  data20, 
  input   wire    [15:0]  data21, 
  input   wire    [15:0]  data22, 
  input   wire    [15:0]  data23, 
  input   wire    [15:0]  data24, 
  input   wire    [15:0]  data25, 
  input   wire    [15:0]  data26, 
  input   wire    [15:0]  data27, 
  input   wire    [15:0]  data28, 
  input   wire    [15:0]  data29, 
  input   wire    [15:0]  data30, 
  input   wire    [15:0]  data31,  
  input   wire    [4:0]   sel, 
  output  wire    [15:0]  data_out
  );
  
  // Internal Declarations
  reg [15:0] data_out_r;
  initial data_out_r = 16'b0;
  assign data_out = data_out_r;
  /////////////////////////////////////////////////////////////////
  // Flowchart process0
always @ (posedge clk)
if (!rst) data_out_r <=16'b0;
else
  begin 
    case (sel)
      5'h0  : data_out_r<=data0;
      5'h1  : data_out_r<=data1;
      5'h2  : data_out_r<=data2;
      5'h3  : data_out_r<=data3;
      5'h4  : data_out_r<=data4;
      5'h5  : data_out_r<=data5;
      5'h6  : data_out_r<=data6;
      5'h7  : data_out_r<=data7;
      
      5'h8 : data_out_r<=data8;
      5'h9 : data_out_r<=data9;
      5'hA : data_out_r<=data10;
      5'hB : data_out_r<=data11;
      5'hC : data_out_r<=data12;
      5'hD : data_out_r<=data13;
      5'hE : data_out_r<=data14;    
      5'hF : data_out_r<=data15;
      
      5'h10  : data_out_r<=data16;
      5'h11  : data_out_r<=data17;
      5'h12  : data_out_r<=data18;
      5'h13  : data_out_r<=data19;
      5'h14  : data_out_r<=data20;
      5'h15  : data_out_r<=data21;
      5'h16  : data_out_r<=data22;
      5'h17  : data_out_r<=data23;
            
      5'h18  : data_out_r<=data24;
      5'h19  : data_out_r<=data25;
      5'h1A  : data_out_r<=data26;
      5'h1B  : data_out_r<=data27;
      5'h1C  : data_out_r<=data28;
      5'h1D  : data_out_r<=data29;
      5'h1E  : data_out_r<=data30;
      5'h1F  : data_out_r<=data31;
      
      default : data_out_r <= 16'b0;
    endcase
  end
  
endmodule
