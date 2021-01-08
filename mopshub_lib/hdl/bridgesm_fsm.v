`resetall
`timescale 1ns/10ps
module bridgeSM( 
   // Port Declarations
   input   wire           clk,              // posedge
   input   wire           co_busy,          // this remains high during the time CANopen block is busy processing the previous message 
   input   wire           end_init,         // Signal from CAN interface block to indicate that initialization process is finished 
   input   wire           end_read_can,     // signal from CANopen block to indicate that it has read receive message buffer 
   input   wire           end_read_co,      // this signal goes high when CANopen block has finshed writing transmit message buffer register 
   input   wire           end_write_can,    // goes high when can interface block had finished writing canakari transmit registers
   input   wire           end_write_co,     // Goes high when CANopen block finished reading the received message buffer register 
   input   wire           endwait,          // This signal indicates when message can't be decoded in one of the CANopen objects to go back to known state to receive message
   input   wire           genrst, 
   input   wire           highpr,           // this goes high if the new message received from CAN bus is of high priority 
   input   wire           idcmpdone, 
   input   wire           irq_can_rec,      // interrupt signal from canakari to indicate successful reception of a new message 
   input   wire           irq_can_tra,      // successful transmission interrupt signal from cankari 
   input   wire           irq_co,           // interrupt from CANopen block to indicate it has finished the job 
   input   wire           lowpr, 
   input   wire           rst,              // lowactive
   input   wire           timeoutrst,       // timeout reset in case bridge controller does not respond in a specied amount of time 
   output  reg            abort_mes,        // Signals other state machines to come to a known statte 
   output  reg            entimeout,        // enable for timeout reset counter 
   output  reg            id_comp,          // To check priority. compares ID of the messaage in received buffer with the new message in the canakari
   output  reg            init,             // to initialize the CAN node (cankari)
   output  reg            reset_irq_can,    // reset canakri interrupt 
   output  reg            send_mes_can,     // tto start transmitting CAN message 
   output  reg            signonsig,        // Signal to send one time NMT message after bootup
   output  reg            start_read_can,   // to read canakari receive registers
   output  reg            start_read_co,    // signal to read transmit message buffer register 
   output  reg            start_write_can,  // to write transmit registers of canakari 
   output  reg            start_write_co, 
   output  reg     [4:0]  statedeb
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations


// Module Declarations

// State encoding
parameter 
          reset              = 5'd0,
          initialize         = 5'd1,
          waittoact          = 5'd2,
          Abort_current      = 5'd3,
          pass_mes_to_co     = 5'd4,
          rst_rec_irq_can    = 5'd5,
          write_mes_canakari = 5'd6,
          wait_suc_tra       = 5'd7,
          rst_all_irq        = 5'd8,
          send_mes           = 5'd9,
          read_co_mes        = 5'd10,
          prev_mes           = 5'd11,
          idcomp             = 5'd12,
          endwaitst          = 5'd13,
          rst_rec_irq_can1   = 5'd14,
          rst_rec_irq_can2   = 5'd15,
          Start              = 5'd16,
          Start_read_new     = 5'd17,
          idcomp1            = 5'd18,
          signon             = 5'd19;

reg [4:0] current_state, next_state;

// Wait State Signals
reg [1:0] csm_timer;
reg [1:0] csm_next_timer;
reg       csm_timeout;
reg       csm_to_idcomp;

wire [4:0]next_stateVoted = next_state;
wire [1:0]csm_next_timerVoted = csm_next_timer;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always @(
   co_busy, 
   current_state, 
   end_init, 
   end_read_can, 
   end_read_co, 
   end_write_can, 
   end_write_co, 
   genrst, 
   highpr, 
   idcmpdone, 
   irq_can_rec, 
   irq_can_tra, 
   irq_co, 
   lowpr, 
   rst
)
begin : next_state_block_proc
   // Default assignments to Wait State entry flags
   csm_to_idcomp = 1'b0;
   case (current_state) 
      reset: begin
         if (rst == 1)
            next_state = Start;
         else
            next_state = reset;
      end
      initialize: begin
         if (end_init == 1)
            next_state = signon;
         else
            next_state = initialize;
      end
      waittoact: begin
         if (irq_can_rec == 1)
            next_state = prev_mes;
         else if (irq_co == 1)
            next_state = read_co_mes;
         else
            next_state = waittoact;
      end
      Abort_current: begin
         next_state = Start_read_new;
      end
      pass_mes_to_co: begin
         if (end_write_co == 1)
            next_state = rst_rec_irq_can;
         else
            next_state = pass_mes_to_co;
      end
      rst_rec_irq_can: begin
         next_state = waittoact;
      end
      write_mes_canakari: begin
         if (end_write_can == 1)
            next_state = send_mes;
         else
            next_state = write_mes_canakari;
      end
      wait_suc_tra: begin
         if (irq_can_tra == 1)
            next_state = rst_all_irq;
         else
            next_state = wait_suc_tra;
      end
      rst_all_irq: begin
         next_state = waittoact;
      end
      send_mes: begin
         next_state = wait_suc_tra;
      end
      read_co_mes: begin
         if (end_read_co == 1)
            next_state = write_mes_canakari;
         else
            next_state = read_co_mes;
      end
      prev_mes: begin
         if (co_busy == 1) begin
            next_state = idcomp;
            csm_to_idcomp = 1'b1;
         end
         else
            next_state = idcomp1;
      end
      idcomp: begin
         if ((genrst && idcmpdone ))
            next_state = reset;
         else if (( highpr && idcmpdone ))
            next_state = Abort_current;
         else if ((lowpr && idcmpdone))
            next_state = rst_rec_irq_can2;
         else
            next_state = idcomp;
      end
      endwaitst: begin
         next_state = rst_rec_irq_can1;
      end
      rst_rec_irq_can1: begin
         next_state = waittoact;
      end
      rst_rec_irq_can2: begin
         next_state = waittoact;
      end
      Start: begin
         next_state = initialize;
      end
      Start_read_new: begin
         if (end_read_can == 1)
            next_state = pass_mes_to_co;
         else
            next_state = Start_read_new;
      end
      idcomp1: begin
         if ((!genrst && idcmpdone ))
            next_state = Start_read_new;
         else if ((genrst && idcmpdone ))
            next_state = reset;
         else
            next_state = idcomp1;
      end
      signon: begin
         if (end_read_co)
            next_state = write_mes_canakari;
         else
            next_state = signon;
      end
      default: 
         next_state = reset;
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
   entimeout = 1;
   id_comp = 0;
   init = 0;
   reset_irq_can = 0;
   send_mes_can = 0;
   signonsig = 0;
   start_read_can = 0;
   start_read_co = 0;
   start_write_can = 0;
   start_write_co = 0;

   // Combined Actions
   case (current_state) 
      reset: begin
         abort_mes = 1 ;
         reset_irq_can = 0 ;
         send_mes_can = 0 ; 
         start_read_can = 0 ;
         start_read_co = 0 ;
         start_write_can = 0 ;
         start_write_co = 0 ;
         init = 0 ;
         id_comp = 0 ;
         entimeout = 0 ;
      end
      initialize: begin
         init = 1 ;
         entimeout = 0 ;
      end
      waittoact: begin
         entimeout = 0 ;
      end
      Abort_current: begin
         abort_mes = 1 ;
      end
      pass_mes_to_co: begin
         start_write_co = 1;
      end
      rst_rec_irq_can: begin
         reset_irq_can = 1 ;
      end
      write_mes_canakari: begin
         start_write_can = 1 ;
      end
      rst_all_irq: begin
         reset_irq_can = 1 ;
      end
      send_mes: begin
         send_mes_can = 1 ;
      end
      read_co_mes: begin
         start_read_co = 1 ;
      end
      idcomp: begin
         id_comp = 1 ;
      end
      rst_rec_irq_can1: begin
         reset_irq_can = 1 ;
      end
      rst_rec_irq_can2: begin
         reset_irq_can = 1 ;
      end
      Start_read_new: begin
         start_read_can = 1 ;
      end
      idcomp1: begin
         id_comp = 1 ;
      end
      signon: begin
         signonsig = 1 ; 
         start_read_co = 1 ;
         start_write_co = 1 ;
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
      csm_timer <= 2'd0;
   end
   else 
   begin
      if (timeoutrst) begin
         current_state <= reset;
         csm_timer <= 2'd0;
      end
      else if (endwait) begin
         current_state <= endwaitst;
         csm_timer <= 2'd0;
      end
      else 
      begin
         current_state <= next_stateVoted;
         csm_timer <= csm_next_timerVoted;
      end
   end
end // Clocked Block

//-----------------------------------------------------------------
// Wait state logic for machine csm
//-----------------------------------------------------------------
always @(
   csm_timer,
   csm_to_idcomp
)
begin : csm_wait_block_proc
   csm_timeout = (csm_timer == 2'd0);
   if (csm_to_idcomp == 1'b1) begin
      csm_next_timer = 2'd1;  //no cycles(2)-1=1
   end
   else begin
      csm_next_timer = (csm_timeout)? 2'd0: (csm_timer - 2'd1);
   end
end // Wait State Block
// State-As-Output assignment
always @(current_state)
statedeb = current_state;

endmodule // bridgeSM
