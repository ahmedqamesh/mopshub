//
// Module mopshub_testbench.data_gen_elink_SM.fsm
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:52:28 09/29/21
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//
`resetall
`timescale 1ns/10ps
module data_gen_elink_SM( 
   // Port Declarations
   // Port Declarations
   // Port Declarations
   // Port Declarations
   // Port Declarations
   // Port Declarations
   // Port Declarations
   input   wire           clk,                   // write FIFO clk
   input   wire           cnt_done, 
   input   wire           end_write_emulator, 
   input   wire           loop_en, 
   input   wire           rst,                   // should be used through VIO
   input   wire           tx_fifo_pfull_gen,     // pfull from Tx FIFO
   output  reg            counter_en, 
   output  reg            done,                  // dbg
   output  reg            rst_cnt, 
   output  reg            start_write_emulator, 
   output  reg     [2:0]  state_o, 
   output  reg            wr_en
);


// Internal Declarations


// Module Declarations

// State encoding
parameter 
          ST_WR         = 3'd0,
          ST_RESET      = 3'd1,
          ST_WAIT_0     = 3'd2,
          ST_DONE       = 3'd3,
          ST_SWITCH     = 3'd4,
          ST_Select_Sig = 3'd5,
          Wait_Suc_tra  = 3'd6,
          s1            = 3'd7;

reg [2:0] current_state, next_state;

// Wait State Signals
reg [3:0] csm_timer;
reg [3:0] csm_next_timer;
reg       csm_timeout;
reg       csm_to_Wait_Suc_tra;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always @(
   cnt_done, 
   csm_timeout, 
   current_state, 
   end_write_emulator, 
   loop_en, 
   tx_fifo_pfull_gen
)
begin : next_state_block_proc
   // Default assignments to Wait State entry flags
   csm_to_Wait_Suc_tra = 1'b0;
   case (current_state) 
      ST_WR: begin
         if (tx_fifo_pfull_gen ==0)
            next_state = ST_WAIT_0;
         else
            next_state = ST_WR;
      end
      ST_RESET: begin
         next_state = ST_WR;
      end
      ST_WAIT_0: begin
         next_state = ST_Select_Sig;
      end
      ST_DONE: begin
         if (loop_en == 1)
            next_state = ST_RESET;
         else
            next_state = ST_DONE;
      end
      ST_SWITCH: begin
         next_state = ST_DONE;
      end
      ST_Select_Sig: begin
         if (end_write_emulator ==1)
            next_state = s1;
         else
            next_state = ST_Select_Sig;
      end
      Wait_Suc_tra: begin
         if (csm_timeout)
            next_state = ST_WAIT_0;
         else
            next_state = Wait_Suc_tra;
      end
      s1: begin
         if (cnt_done == 1)
            next_state = ST_SWITCH;
         else begin
            next_state = Wait_Suc_tra;
            csm_to_Wait_Suc_tra = 1'b1;
         end
      end
      default: 
         next_state = ST_RESET;
   endcase
end // Next State Block

//-----------------------------------------------------------------
// Output Block for machine csm
//-----------------------------------------------------------------
always @(
   current_state
)
begin : output_block_proc
   // Default Assignment
   counter_en = 0;
   done = 0;
   rst_cnt = 0;
   start_write_emulator = 0;
   state_o = 3'b0;
   wr_en = 0;

   // Combined Actions
   case (current_state) 
      ST_WR: begin
         state_o  = 3'b010;
      end
      ST_RESET: begin
         state_o  = 3'b000;
         done =0;
         start_write_emulator = 0;
         wr_en =0;
         counter_en=0;
         rst_cnt = 1 ;
      end
      ST_WAIT_0: begin
         state_o     = 3'b011;
         counter_en = 1;
      end
      ST_DONE: begin
         state_o = 3'b110;
         done =1;
      end
      ST_SWITCH: begin
         state_o     = 3'b101;
          rst_cnt = 1 ;
      end
      ST_Select_Sig: begin
         state_o = 3'b100;
         wr_en      = 1;
         start_write_emulator =1;
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
      current_state <= ST_RESET;
      csm_timer <= 4'd0;
   end
   else 
   begin
      current_state <= next_state;
      csm_timer <= csm_next_timer;
   end
end // Clocked Block

//-----------------------------------------------------------------
// Wait state logic for machine csm
//-----------------------------------------------------------------
always @(
   csm_timer,
   csm_to_Wait_Suc_tra
)
begin : csm_wait_block_proc
   csm_timeout = (csm_timer == 4'd0);
   if (csm_to_Wait_Suc_tra == 1'b1) begin
      csm_next_timer = 4'd9;  //no cycles(10)-1=9
   end
   else begin
      csm_next_timer = (csm_timeout)? 4'd0: (csm_timer - 4'd1);
   end
end // Wait State Block
endmodule // data_gen_elink_SM