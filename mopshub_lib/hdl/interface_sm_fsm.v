//
// Module mopshub_lib.interface_SM.fsm
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:57:27 02/04/21
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//
`resetall
`timescale 1ns/10ps
module interface_SM( 
   // Port Declarations
   input   wire           abort,           // Upon receiving a reset message on the CANbus. FSM goes into a known state
   input   wire           chksdocmd,       // This signal asks to check for SDO command. write/read. write => high priority 
   input   wire           clk,             // posedge
   input   wire    [4:0]  cs_select, 
   input   wire           genrst, 
   input   wire           highpr,          // This goes high if the new message is of high priority
   input   wire           id_comp,         // request to idcomp block to compare ID's of previous and new CAN message
   input   wire           init,            // initialize request from bridge FSM of bridge controller 
   input   wire           reset_irq_can,   // request from bridge FSM
   input   wire           rst,             // synchronous low active
   input   wire           sdopr, 
   input   wire           send_mes,        // request from bridge FSM
   input   wire           start_read,      // request from bridge FSM 
   input   wire           start_write,     // request from bridge FSM
   input   wire           timeoutrst,      // timeout reset signal to the state machine in case bridge controller is not respoding for a specified time
   output  reg     [4:0]  addr,            // request to caninterface block
   output  reg     [4:0]  can_tra_select, 
   output  reg            cs_can, 
   output  reg            en_rec_reg, 
   output  reg            end_init,        // indication to bridge FSM when initialization is finished 
   output  reg            end_read,        // request to bridge FSM 
   output  reg            end_write,       // request to bridge FSM
   output  reg            highprio,        // Signal to main FSM incase of high priority new message
   output  reg            idcmpdone, 
   output  reg            initi,           // request to caninterface block
   output  reg            lowprio,         // Signal to main FSM incase of low priority new message
   output  reg            read,            // request to caninterface block(this actually connects to CAN node(canakari))
   output  reg            rstid,           // new ID is intended for reset
   output  reg     [5:0]  statedeb,        // State debug signal 
   output  reg            write            // request to caninterface block
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations


// Module Declarations

// State encoding
parameter 
          waittoact    = 6'd0,
          reset        = 6'd1,
          prescalar    = 6'd2,
          general      = 6'd3,
          encom        = 6'd4,
          accmask      = 6'd5,
          accmask1     = 6'd6,
          idr3         = 6'd7,
          idr4         = 6'd8,
          s0           = 6'd9,
          start        = 6'd10,
          waitCAN      = 6'd11,
          idr1         = 6'd12,
          RB4          = 6'd13,
          RB3          = 6'd14,
          RB1          = 6'd15,
          RB2          = 6'd16,
          end_readst   = 6'd17,
          store_idr1   = 6'd18,
          store_RB1    = 6'd19,
          store_RB2    = 6'd20,
          store_RB3    = 6'd21,
          store_RB4    = 6'd22,
          id1          = 6'd23,
          d2           = 6'd24,
          d3           = 6'd25,
          d1           = 6'd26,
          d4           = 6'd27,
          tc           = 6'd28,
          general1     = 6'd29,
          rstirq       = 6'd30,
          general2     = 6'd31,
          readnewid    = 6'd32,
          chksdocmdst  = 6'd33,
          resetid      = 6'd34,
          highprid     = 6'd35,
          lowprid      = 6'd36,
          sameid       = 6'd37,
          endidcmp     = 6'd38,
          storenewid   = 6'd39,
          chksdocmdst1 = 6'd40,
          waitreadid   = 6'd41,
          waitreadcmd  = 6'd42;

reg [5:0] current_state, next_state;

// Wait State Signals
reg [5:0] csm_timer;
reg [5:0] csm_next_timer;
reg       csm_timeout;
reg       csm_to_waitCAN;
reg       csm_to_end_readst;

wire [5:0]next_stateVoted = next_state;
wire [2:0]csm_next_timerVoted = csm_next_timer;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always @(
   chksdocmd, 
   csm_timeout, 
   current_state, 
   genrst, 
   highpr, 
   id_comp, 
   init, 
   reset_irq_can, 
   rst, 
   sdopr, 
   send_mes, 
   start_read, 
   start_write
)
begin : next_state_block_proc
   // Default assignments to Wait State entry flags
   csm_to_waitCAN = 1'b0;
   csm_to_end_readst = 1'b0;
   case (current_state) 
      waittoact: begin
         if (reset_irq_can == 1)
            next_state = general2;
         else if (id_comp == 1)
            next_state = readnewid;
         else if (start_read == 1)
            next_state = idr1;
         else if (init == 1)
            next_state = start;
         else if (start_write == 1)
            next_state = general1;
         else
            next_state = waittoact;
      end
      reset: begin
         if (rst == 1)
            next_state = waittoact;
         else
            next_state = reset;
      end
      prescalar: begin
         next_state = general;
      end
      general: begin
         next_state = encom;
      end
      encom: begin
         next_state = idr3;
      end
      accmask: begin
         next_state = accmask1;
      end
      accmask1: begin
         next_state = s0;
      end
      idr3: begin
         next_state = idr4;
      end
      idr4: begin
         next_state = accmask;
      end
      s0: begin
         next_state = waittoact;
      end
      start: begin
         next_state = waitCAN;
         csm_to_waitCAN = 1'b1;
      end
      waitCAN: begin
         if (csm_timeout && (init == 1))
            next_state = prescalar;
         else
            next_state = waitCAN;
      end
      idr1: begin
         next_state = store_idr1;
      end
      RB4: begin
         next_state = store_RB4;
      end
      RB3: begin
         next_state = store_RB3;
      end
      RB1: begin
         next_state = store_RB1;
      end
      RB2: begin
         next_state = store_RB2;
      end
      end_readst: begin
         next_state = waittoact;
      end
      store_idr1: begin
         next_state = RB1;
      end
      store_RB1: begin
         next_state = RB2;
      end
      store_RB2: begin
         next_state = RB3;
      end
      store_RB3: begin
         next_state = RB4;
      end
      store_RB4: begin
         next_state = end_readst;
         csm_to_end_readst = 1'b1;
      end
      id1: begin
         next_state = d1;
      end
      d2: begin
         next_state = d3;
      end
      d3: begin
         next_state = d4;
      end
      d1: begin
         next_state = d2;
      end
      d4: begin
         if (send_mes == 1)
            next_state = tc;
         else
            next_state = d4;
      end
      tc: begin
         next_state = waittoact;
      end
      general1: begin
         next_state = id1;
      end
      rstirq: begin
         next_state = waittoact;
      end
      general2: begin
         next_state = rstirq;
      end
      readnewid: begin
         next_state = storenewid;
      end
      chksdocmdst: begin
         next_state = chksdocmdst1;
      end
      resetid: begin
         next_state = endidcmp;
      end
      highprid: begin
         next_state = endidcmp;
      end
      lowprid: begin
         next_state = endidcmp;
      end
      sameid: begin
         next_state = chksdocmdst;
      end
      endidcmp: begin
         next_state = waittoact;
      end
      storenewid: begin
         next_state = waitreadid;
      end
      chksdocmdst1: begin
         next_state = waitreadcmd;
      end
      waitreadid: begin
         if (genrst == 1)
            next_state = resetid;
         else if (highpr == 1)
            next_state = highprid;
         else if (chksdocmd == 1)
            next_state = sameid;
         else if (highpr == 0)
            next_state = lowprid;
         else
            next_state = waitreadid;
      end
      waitreadcmd: begin
         if (sdopr == 1)
            next_state = highprid;
         else if (sdopr == 0)
            next_state = lowprid;
         else
            next_state = waitreadcmd;
      end
      default: 
         next_state = reset;
   endcase
end // Next State Block

//-----------------------------------------------------------------
// Output Block for machine csm
//-----------------------------------------------------------------
always @(
   cs_select, 
   current_state
)
begin : output_block_proc
   // Default Assignment
   addr = 5'b11111;
   can_tra_select = 5'b0;
   cs_can = 0;
   en_rec_reg = 0;
   end_init = 0;
   end_read = 0;
   end_write = 0;
   highprio = 0;
   idcmpdone = 0;
   initi = 0;
   lowprio = 0;
   read = 1;
   rstid = 0;
   write = 1;

   // Combined Actions
   case (current_state) 
      prescalar: begin
         initi = 1 ;
         addr = 5'b01111;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      general: begin
         initi = 1;
         addr = 5'b01110;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      encom: begin
         initi = 1;
         addr = 5'b10010 ;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      accmask: begin
         initi = 1 ;
         addr = 5'b10001 ;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      accmask1: begin
         initi = 1 ;
         addr = 5'b10000 ;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      idr3: begin
         addr = 5'b00101;
         initi = 1 ;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      idr4: begin
         initi = 1;
         addr = 5'b00100 ;
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      s0: begin
         end_init=1;
      end
      idr1: begin
         read = 0;
         addr = 5'b00101;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      RB4: begin
         read = 0;
         addr = 5'b00000 ;
         can_tra_select = cs_select;
         cs_can = 1 ;
      end
      RB3: begin
         read = 0;
         addr = 5'b00001 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      RB1: begin
         read = 0;
         addr = 5'b00011 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      RB2: begin
         read = 0;
         addr = 5'b00010 ;
         can_tra_select = cs_select;
         cs_can = 1 ;
      end
      end_readst: begin
         end_read = 1 ;
         addr = 5'b11111;
      end
      store_idr1: begin
         read = 0;
         addr = 5'b00101;
         cs_can = 1 ;
         can_tra_select = cs_select;
         en_rec_reg = 1 ;
      end
      store_RB1: begin
         read = 0;
         addr = 5'b00011 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
         en_rec_reg = 1;
      end
      store_RB2: begin
         read = 0;
         addr = 5'b00010 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
         en_rec_reg = 1;
      end
      store_RB3: begin
         read = 0;
         addr = 5'b00001 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
         en_rec_reg = 1;
      end
      store_RB4: begin
         read = 0;
         addr = 5'b00000 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
         en_rec_reg = 1;
      end
      id1: begin
         write = 0 ;
         addr = 5'b01100 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      d2: begin
         write = 0 ;
         addr = 5'b01001 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      d3: begin
         write = 0 ;
         addr = 5'b01000 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      d1: begin
         write = 0 ;
         addr = 5'b01010 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      d4: begin
         write = 0 ;
         addr = 5'b00111 ;
         end_write = 1 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      tc: begin
         write = 0 ;
         addr = 5'b01101 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      general1: begin
         write = 0 ;
         addr = 5'b01110;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      rstirq: begin
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
         addr = 5'b10010 ;
      end
      general2: begin
         write = 0 ;
         cs_can = 1 ;
         can_tra_select = cs_select;
         addr = 5'b01110;
      end
      readnewid: begin
         read = 0 ;
         addr = 5'b00101;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      chksdocmdst: begin
         read = 0 ;
         addr = 5'b00011;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      resetid: begin
         idcmpdone = 1 ;
         rstid = 1 ;
      end
      highprid: begin
         idcmpdone = 1 ;
          highprio = 1 ;
      end
      lowprid: begin
         idcmpdone = 1 ;
         lowprio = 1 ;
      end
      storenewid: begin
         read = 0 ;
         addr = 5'b00101;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
      chksdocmdst1: begin
         read = 0 ;
         addr = 5'b00011;
         cs_can = 1 ;
         can_tra_select = cs_select;
      end
   endcase
end // Output Block

//-----------------------------------------------------------------
// Clocked Block for machine csm
//-----------------------------------------------------------------
always @(
   posedge clk, 
   negedge rst
) 
begin : clocked_block_proc
   if (!rst) begin
      current_state <= reset;
      csm_timer <= 6'd0;
   end
   else 
   begin
      if (timeoutrst) begin
         current_state <= reset;
         csm_timer <= 6'd0;
      end
      else if (abort) begin
         current_state <= reset;
         csm_timer <= 6'd0;
      end
      else 
      begin
         current_state <= next_state;
         csm_timer <= csm_next_timer;
      end
   end
end // Clocked Block

//-----------------------------------------------------------------
// Wait state logic for machine csm
//-----------------------------------------------------------------
always @(
   csm_timer,
   csm_to_waitCAN,
   csm_to_end_readst
)
begin : csm_wait_block_proc
   csm_timeout = (csm_timer == 6'd0);
   if (csm_to_waitCAN == 1'b1) begin
      csm_next_timer = 6'd59;  //no cycles(60)-1=59
   end
   else if (csm_to_end_readst == 1'b1) begin
      csm_next_timer = 6'd3;  //no cycles(4)-1=3
   end
   else begin
      csm_next_timer = (csm_timeout)? 6'd0: (csm_timer - 6'd1);
   end
end // Wait State Block
// State-As-Output assignment
always @(current_state)
statedeb = current_state;

endmodule // interface_SM