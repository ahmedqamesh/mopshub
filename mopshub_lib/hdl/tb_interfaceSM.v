//
// Verilog Module mopshub_lib.tb_interfaceSM
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:25:23 01/28/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_interfaceSM ;
   // Internal Declarations
   // Inputs
   reg abort;          // Upon receiving a reset message on the CANbus. FSM goes into a known state
   reg chksdocmd;      // This signal asks to check for SDO command. write/read. write => high priority 
   reg clk = 1'b0;            // posedge
   reg genrst; 
   reg highpr;         // This goes high if the new message is of high priority
   reg id_comp;        // request to idcomp block to compare ID's of previous and new CAN message
   reg init;           // initialize request from bridge FSM of bridge controller 
   reg reset_irq_can;  // request from bridge FSM
   reg rst;            // synchronous low active
   reg sdopr; 
   reg send_mes;       // request from bridge FSM
   reg start_read;     // request from bridge FSM 
   reg start_write;    // request from bridge FSM
   reg timeoutrst;     // timeout reset signal to the state machine in case bridge controller is not respoding for a specified time
   reg [4:0] cs_select;
   
   // Outputs
   wire[4:0]  addr;           // request to caninterface block
   wire       cs_can; 
   wire       en_rec_reg; 
   wire       end_init;       // indication to bridge FSM when initialization is finished 
   wire       end_read;       // request to bridge FSM 
   wire       end_write;      // request to bridge FSM
   wire       highprio;       // Signal to main FSM incase of high priority new message
   wire       idcmpdone; 
   wire       initi;          // request to caninterface block
   wire       lowprio;        // Signal to main FSM incase of low priority new message
   wire       read;           // request to caninterface block(this actually connects to CAN node(canakari))
   wire       rstid;          // new ID is intended for reset
   wire[5:0]  statedeb;       // State debug signal 
   wire       write;           // request to caninterface block
   wire  [4:0]  can_tra_select;
   
interface_SM uut (
  .abort(abort),
  .chksdocmd(chksdocmd),
  .clk(clk),
  .genrst(genrst),
  .highpr(highpr),
  .id_comp(id_comp),
  .init(init),
  .reset_irq_can(reset_irq_can),
  .rst(rst),
  .sdopr(sdopr),
  .send_mes(send_mes),
  .start_read(start_read),
  .start_write(start_write),
  .timeoutrst(timeoutrst),
  .addr(addr),
  .cs_can(cs_can),
  .en_rec_reg(en_rec_reg),
  .end_init(end_init),
  .end_read(end_read),
  .end_write(end_write),
  .highprio(highprio),
  .idcmpdone(idcmpdone),
  .initi(initi),
  .lowprio(lowprio),
  .read(read),
  .rstid(rstid),
  .statedeb(statedeb),
  .write(write),
  .cs_select(cs_select),
  .can_tra_select(can_tra_select)
);
	always #1 clk = ~clk;
  initial begin
  cs_select = 5'b00001;
  rst = 1;
  # 2 
  id_comp =1;
  # 3 
  chksdocmd = 1;
  #3
  sdopr = 1;
  
  end
endmodule