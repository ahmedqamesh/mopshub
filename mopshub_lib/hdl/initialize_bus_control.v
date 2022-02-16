
//
// Verilog Module mopshub_lib.initialize_bus_control
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:14:29 02/15/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//
//Steps expected to Initialize ADC cs5523
//[1] rst      [0x03, 0x00, 0x00, 0x80]
//[2] reset RS [0x03, 0x00, 0x00, 0x00]
//[3] Read     [0x0B, 0x00, 0x00, 0x00]
//[4] Configure[0x03, 0x00, 0x30, 0x00] Configuring to 4 CSRs setups
//[5] Read     [0x0B, 0x00, 0x00, 0x00]
//[6] Write CSR[0x05]
//[7] CSR CS0  [00, B] 000 00 000 1011 
//[8] CSR CS1  [08, B] 000 01 000 1011
//[8] CSR CS2  [10, B] 000 10 000 1011
//[9] CSR CS3  [1, 8B] 000 11 000 10////01 Channel-setup registers == [0x05, 0x00, 0xB0, 0x8B, 0x10, 0xB1, 0x8B]
//[10]Offset   [0x81, 0x00, 0x00, 0x00]
//[11]Calibrate[0x82, 0x00, 0x00, 0x00]
//[12]Calibrate[0x85, 0x00, 0x00, 0x00]
//[13]Calibrate[0x86, 0x00, 0x00, 0x00] 
`resetall
`timescale 1ns/10ps
module initialize_bus_control( 
   input   wire    [4:0]   addr,       // Address of the Canakari registers
   output  wire    [7:0]  data_init  // Ouput data to be written to the registers
);

// Internal Declarations
reg [7:0] data_init_reg;
assign data_init = data_init_reg;

always @ (*)
begin
   case(addr)
       5'h1  : data_init_reg = 8'hFF;          //Init_1    1111 1 111
       5'h2  : data_init_reg = 8'hFE;          //Init_2    1111 1 110
       5'h3  : data_init_reg = 8'h03;          //reset_1/Conf1   0000 0 [write] 011 [conf reg]
       5'h4  : data_init_reg = 8'h00;          //reset_2/3 0000 0 000
       5'h6  : data_init_reg = 8'h80;          //reset_4   1 [rs] 0 [rc] 00 0000 [Activate reset Cycle]  
       5'h7  : data_init_reg = 8'h0B;          //read RV   0000 1 011  //After this output of ADC is 0000 0000 0100
       5'h8  : data_init_reg = 8'h30;          //Conf3 0011 0000  
       5'h9  : data_init_reg = 8'h05;          //write csr1 00 0 00 101 [1.88] 
       5'hA  : data_init_reg = 8'hB0;          //write csr2 1011 0000 
       5'hB  : data_init_reg = 8'h8B;          //write csr3 1000 101[2.5 V] 1[Unipolar measurement mode]  
       5'hC  : data_init_reg = 8'h10;          //write csr4 0001 0000
       5'hD  : data_init_reg = 8'hB1;          //write csr5 1011 0001 
       5'hE  : data_init_reg = 8'h0D;          //Read csr   
       5'hF  : data_init_reg = 8'h81;          //calibrate 1    
       5'h10 : data_init_reg = 8'h82;         //calibrate 2  
       5'h11 : data_init_reg = 8'h85;         //calibrate 3  
       5'h12 : data_init_reg = 8'h86;         //calibrate 4 
       default : data_init_reg  = 8'h00;
   endcase 
end 


endmodule
