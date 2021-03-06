//
// Module mopshub_lib.can_elink_bridge_SM.fsm
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:07:56 06/27/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//
`resetall
`timescale 1ns/10ps
module can_elink_bridge_SM( 
   // Port Declarations
   input   wire           clk,                 // posedge
   input   wire           end_init,            // Signal from CAN interface block to indicate that initialization process is finished 
   input   wire           end_mon_init, 
   input   wire           end_power_init, 
   input   wire           end_read_can,        // signal from CANopen block to indicate that it has read receive message buffer 
   input   wire           end_read_elink,      // this signal goes high when CANopen block has finshed writing transmit message buffer register 
   input   wire           end_write_can,       // goes high when can interface block had finished writing canakari transmit registers
   input   wire           end_write_elink,     // Goes high when CANopen block finished reading the received message buffer register 
   input   wire           endwait,             // This signal indicates when message can't be decoded in one of the CANopen objects to go back to known state to receive message
   input   wire           irq_can_rec,         // interrupt signal from canakari to indicate successful read of a new message by one of the 32 buses 
   input   wire           irq_can_tra,         // successful transmission interrupt signal from cankari 
   input   wire           irq_elink_tra,       // interrupt from elink to indicate it has a msg
   input   wire           reset_all_done, 
   input   wire           reset_irq_can_done, 
   input   wire           rst,                 // lowactive
   input   wire           timeoutrst,          // timeout reset in case bridge controller does not respond in a specied amount of time 
   output  reg            abort_mes,           // Signals other state machines to come to a known statte 
   output  reg            end_can_proc, 
   output  reg            entimeout,           // enable for timeout reset counter 
   output  reg            read_can_mode, 
   output  reg            reset_irq_can,       // reset canakri interrupt 
   output  reg            reset_irq_can_all,   // reset all canakri interrupt 
   output  reg            reset_irq_rec_can, 
   output  reg            reset_irq_tra_can, 
   output  reg            send_mes_can, 
   output  reg            sign_on_sig,         // Signal to send one time NMT message after bootup
   output  reg            start_init_can,      // to initialize the CAN node (cankari)
   output  reg            start_mon_init, 
   output  reg            start_power_init, 
   output  reg            start_read_can,      // to read canakari receive registers
   output  reg            start_read_elink,    // signal to read transmit message buffer register 
   output  reg            start_write_can,     // to write transmit registers of canakari 
   output  reg            start_write_elink, 
   output  reg     [5:0]  statedeb
);


// Internal Declarations


// Module Declarations

// State encoding
parameter 
          reset             = 5'd0,
          initialize        = 5'd1,
          waittoact         = 5'd2,
          endwaitst         = 5'd3,
          signon            = 5'd4,
          rst_all_irq_can   = 5'd5,
          init_Trim_OSC     = 5'd6,
          read_elink_mes    = 5'd7,
          Start_write_can   = 5'd8,
          pass_mes_to_can   = 5'd9,
          rst_tra_irq_can   = 5'd10,
          finish_proc       = 5'd11,
          rst_rec_irq_can   = 5'd12,
          pass_mes_to_elink = 5'd13,
          assign_bus_id     = 5'd14,
          Start_read_elink  = 5'd15,
          Abort_current     = 5'd16,
          init_Mon_ADC      = 5'd17;

reg [4:0] current_state, next_state;
// pragma synthesis_off
reg hds_animation_indicator;
// pragma synthesis_on

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always @(
   current_state, 
   end_init, 
   end_mon_init, 
   end_power_init, 
   end_read_can, 
   end_read_elink, 
   end_write_can, 
   end_write_elink, 
   irq_can_rec, 
   irq_can_tra, 
   irq_elink_tra, 
   reset_all_done, 
   reset_irq_can_done, 
   rst
)
begin : next_state_block_proc
   case (current_state) 
      reset: begin
         if (rst == 1) begin
            next_state = initialize;
            // pragma synthesis_off
            $hdsNextPath(0,1);
            // pragma synthesis_on
         end
         else begin
            next_state = reset;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      initialize: begin
         if (end_init == 1) begin
            next_state = init_Mon_ADC;
            // pragma synthesis_off
            $hdsNextPath(0,2);
            // pragma synthesis_on
         end
         else begin
            next_state = initialize;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      waittoact: begin
         if (irq_can_rec == 1) begin
            next_state = assign_bus_id;
            // pragma synthesis_off
            $hdsNextPath(0,3);
            // pragma synthesis_on
         end
         else if (irq_elink_tra == 1) begin
            next_state = read_elink_mes;
            // pragma synthesis_off
            $hdsNextPath(0,4);
            // pragma synthesis_on
         end
         else begin
            next_state = waittoact;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      endwaitst: begin
         next_state = Abort_current;
         // pragma synthesis_off
         $hdsNextPath(0,5);
         // pragma synthesis_on
      end
      signon: begin
         next_state = waittoact;
         // pragma synthesis_off
         $hdsNextPath(0,6);
         // pragma synthesis_on
      end
      rst_all_irq_can: begin
         if (reset_all_done ==1) begin
            next_state = waittoact;
            // pragma synthesis_off
            $hdsNextPath(0,7);
            // pragma synthesis_on
         end
         else begin
            next_state = rst_all_irq_can;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      init_Trim_OSC: begin
         if (end_power_init ==1) begin
            next_state = signon;
            // pragma synthesis_off
            $hdsNextPath(0,8);
            // pragma synthesis_on
         end
         else begin
            next_state = init_Trim_OSC;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      read_elink_mes: begin
         if (end_read_elink == 1) begin
            next_state = Start_write_can;
            // pragma synthesis_off
            $hdsNextPath(0,9);
            // pragma synthesis_on
         end
         else begin
            next_state = read_elink_mes;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      Start_write_can: begin
         if (end_write_can == 1) begin
            next_state = pass_mes_to_can;
            // pragma synthesis_off
            $hdsNextPath(0,10);
            // pragma synthesis_on
         end
         else begin
            next_state = Start_write_can;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      pass_mes_to_can: begin
         if (irq_can_tra == 1) begin
            next_state = rst_tra_irq_can;
            // pragma synthesis_off
            $hdsNextPath(0,11);
            // pragma synthesis_on
         end
         else begin
            next_state = pass_mes_to_can;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      rst_tra_irq_can: begin
         if (reset_irq_can_done ==1) begin
            next_state = waittoact;
            // pragma synthesis_off
            $hdsNextPath(0,12);
            // pragma synthesis_on
         end
         else begin
            next_state = rst_tra_irq_can;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      finish_proc: begin
         next_state = pass_mes_to_elink;
         // pragma synthesis_off
         $hdsNextPath(0,13);
         // pragma synthesis_on
      end
      rst_rec_irq_can: begin
         if (reset_irq_can_done ==1) begin
            next_state = finish_proc;
            // pragma synthesis_off
            $hdsNextPath(0,14);
            // pragma synthesis_on
         end
         else begin
            next_state = rst_rec_irq_can;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      pass_mes_to_elink: begin
         if (end_write_elink == 1) begin
            next_state = waittoact;
            // pragma synthesis_off
            $hdsNextPath(0,15);
            // pragma synthesis_on
         end
         else begin
            next_state = pass_mes_to_elink;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      assign_bus_id: begin
         next_state = Start_read_elink;
         // pragma synthesis_off
         $hdsNextPath(0,16);
         // pragma synthesis_on
      end
      Start_read_elink: begin
         if (end_read_can == 1) begin
            next_state = rst_rec_irq_can;
            // pragma synthesis_off
            $hdsNextPath(0,17);
            // pragma synthesis_on
         end
         else begin
            next_state = Start_read_elink;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      Abort_current: begin
         next_state = rst_all_irq_can;
         // pragma synthesis_off
         $hdsNextPath(0,18);
         // pragma synthesis_on
      end
      init_Mon_ADC: begin
         if (end_mon_init ==1) begin
            next_state = init_Trim_OSC;
            // pragma synthesis_off
            $hdsNextPath(0,19);
            // pragma synthesis_on
         end
         else begin
            next_state = init_Mon_ADC;
            // pragma synthesis_off
            $hdsNextPath(0,0);
            // pragma synthesis_on
         end
      end
      default: begin
         next_state = reset;
         // pragma synthesis_off
         $hdsNextPath(0,0);
         // pragma synthesis_on
      end
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
   abort_mes = 0;
   end_can_proc = 0;
   entimeout = 1;
   read_can_mode = 0;
   reset_irq_can = 0;
   reset_irq_can_all = 0;
   reset_irq_rec_can = 0;
   reset_irq_tra_can = 0;
   send_mes_can = 0;
   sign_on_sig = 0;
   start_init_can = 0;
   start_mon_init = 0;
   start_power_init = 0;
   start_read_can = 0;
   start_read_elink = 0;
   start_write_can = 0;
   start_write_elink = 0;

   // Combined Actions
   case (current_state) 
      reset: begin
         abort_mes = 0 ;
         reset_irq_can = 0 ;
         reset_irq_can_all = 0 ;
         send_mes_can = 0 ;  
         start_read_can = 0 ;
         start_read_elink = 0 ;
         start_write_can = 0 ;
         start_write_elink = 0 ;
         start_init_can = 0 ;
         sign_on_sig = 0;
         entimeout = 0 ;
         read_can_mode =0;
      end
      initialize: begin
         start_init_can = 1 ;
         entimeout = 0 ;
      end
      waittoact: begin
         entimeout = 0 ;
      end
      signon: begin
         sign_on_sig = 1 ;
      end
      rst_all_irq_can: begin
         reset_irq_can_all = 1 ;
      end
      init_Trim_OSC: begin
         start_power_init =1;
         entimeout = 0 ;
      end
      read_elink_mes: begin
         start_read_elink = 1 ;
      end
      Start_write_can: begin
         start_write_can = 1 ;
      end
      pass_mes_to_can: begin
         send_mes_can =1;
      end
      rst_tra_irq_can: begin
         reset_irq_can = 1 ;
         reset_irq_tra_can = 1 ;
      end
      finish_proc: begin
         end_can_proc = 1;
         read_can_mode =1;
      end
      rst_rec_irq_can: begin
         reset_irq_can = 1 ;
         reset_irq_rec_can = 1 ;
         read_can_mode =1;
      end
      pass_mes_to_elink: begin
         start_write_elink = 1;
         read_can_mode =1;
      end
      assign_bus_id: begin
         read_can_mode =1;
      end
      Start_read_elink: begin
         start_read_can = 1 ;
         read_can_mode =1;
      end
      Abort_current: begin
         abort_mes = 1 ;
      end
      init_Mon_ADC: begin
         start_mon_init =1;
      end
   endcase
end // Output Block

//-----------------------------------------------------------------
// Clocked Block for machine csm
//-----------------------------------------------------------------
always @(
   posedge clk, 
   posedge endwait
) 
begin : clocked_block_proc
   if (endwait) begin
      current_state <= endwaitst;
   end
   else 
   begin
      if (!rst) begin
         current_state <= reset;
      end
      else if (timeoutrst) begin
         current_state <= endwaitst;
      end
      else 
      begin
         current_state <= next_state;
         // pragma synthesis_off
         $hdsClock(0);
         // pragma synthesis_on
      end
   end
end // Clocked Block

// State-As-Output assignment
always @(current_state)
begin
   statedeb = 6'b0;
   statedeb[4:0] = current_state;
end

endmodule // can_elink_bridge_SM
