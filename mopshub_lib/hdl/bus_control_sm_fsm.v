//
// Module mopshub_lib.bus_control_SM.fsm
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:25:37 02/19/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//
`resetall
`timescale 1ns/10ps
module bus_control_SM( 
   // Port Declarations
   input   wire           abort,                  // Upon receiving a reset message on the CANbus. FSM goes into a known state
   input   wire           clk,                    // posedge
   input   wire           cnt_done, 
   input   wire           end_cnt, 
   input   wire           end_read_elink,         // this signal goes high when CANopen block has finshed writing transmit message buffer register 
   input   wire           end_read_miso, 
   input   wire           end_write_elink_spi, 
   input   wire           irq_spi_tra, 
   input   wire           rst,                    // synchronous low active
   input   wire           start_bus_init,         // initialize request from bridge FSM of bridge controller 
   input   wire           start_mon_init, 
   input   wire           start_power_off, 
   input   wire           start_power_on, 
   input   wire           start_read_mon, 
   input   wire           timeoutrst,             // timeout reset signal to the state machine in case bridge controller is not respoding for a specified time
   output  reg     [4:0]  addr,                   // request to caninterface block
   output  reg            bus_en_done,            // indication to bridge FSM when initialization is finished 
   output  reg            cs_m, 
   output  reg            cs_p, 
   output  reg            end_spi_proc, 
   output  reg            entimeout, 
   output  reg            mon_en_done, 
   output  reg            read_spi_mode, 
   output  reg            spi_cs, 
   output  reg            start_cnt, 
   output  reg            start_init, 
   output  reg            start_read_elink,       // signal to read transmit message buffer register 
   output  reg            start_read_miso, 
   output  reg            start_write_elink_spi, 
   output  reg     [6:0]  statedeb                // State debug signal 
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations


// Module Declarations

// State encoding
parameter 
          waittoact         = 7'd0,
          reset             = 7'd1,
          ST_IODIRA         = 7'd2,
          start             = 7'd3,
          ST_Init_1         = 7'd4,
          st_Init_2         = 7'd5,
          ST_Config1        = 7'd6,
          write_csrs1       = 7'd7,
          ST_Gain_calibrate = 7'd8,
          endinit1          = 7'd9,
          start1            = 7'd10,
          ST_Rest_1         = 7'd11,
          ST_Rest_2         = 7'd12,
          ST_Rest_4         = 7'd13,
          ST_Rest_RS_1      = 7'd14,
          ST_Rest_RS_2      = 7'd15,
          St_wait           = 7'd16,
          St_wait1          = 7'd17,
          St_wait2          = 7'd18,
          ST_Config2        = 7'd19,
          ST_Config3        = 7'd20,
          ST_Config4        = 7'd21,
          ST_Read_reg       = 7'd22,
          ST_Read_RS_3      = 7'd23,
          ST_Read_reg1      = 7'd24,
          ST_Read_RS_4      = 7'd25,
          St_wait3          = 7'd26,
          write_csrs2       = 7'd27,
          write_csrs3       = 7'd28,
          write_csrs4       = 7'd29,
          write_csrs5       = 7'd30,
          write_csrs6       = 7'd31,
          write_csrs7       = 7'd32,
          ST_Read_reg2      = 7'd33,
          ST_Read_RS_5      = 7'd34,
          St_wait4          = 7'd35,
          ST_calibrate1     = 7'd36,
          ST_calibrate2     = 7'd37,
          ST_calibrate3     = 7'd38,
          ST_Rest_RS_3      = 7'd39,
          ST_Rest_RS_4      = 7'd40,
          ST_Rest_RS_5      = 7'd41,
          ST_Rest_RS_6      = 7'd42,
          ST_IODIRA1        = 7'd43,
          st_IODIRB         = 7'd44,
          st_IODIRB1        = 7'd45,
          st_IODIRB2        = 7'd46,
          St_wait5          = 7'd47,
          St_wait6          = 7'd48,
          st_GPIOB          = 7'd49,
          st_GPIOB1         = 7'd50,
          st_GPIOB2         = 7'd51,
          St_wait7          = 7'd52,
          st_GPPUA          = 7'd53,
          st_GPPUA1         = 7'd54,
          st_GPPUA2         = 7'd55,
          St_wait8          = 7'd56,
          st_GPPUB          = 7'd57,
          st_GPPUB1         = 7'd58,
          st_GPPUB2         = 7'd59,
          St_wait9          = 7'd60,
          st_GPIOA          = 7'd61,
          st_GPIOA1         = 7'd62,
          st_GPIOA2         = 7'd63,
          St_wait10         = 7'd64,
          End_Select        = 7'd65,
          st_GPIOA3         = 7'd66,
          st_GPIOA4         = 7'd67,
          st_GPIOA5         = 7'd68,
          st_GPIOA6         = 7'd69,
          st_GPIOA7         = 7'd70,
          st_GPIOA8         = 7'd71,
          ST_Read_reg5      = 7'd72,
          ST_Read_RS_8      = 7'd73,
          Write_Mosi        = 7'd74,
          read_elink_mes1   = 7'd75,
          CS_low            = 7'd76,
          Read_Miso         = 7'd77,
          Done              = 7'd78,
          write_elink       = 7'd79,
          Wait_Miso         = 7'd80;

reg [6:0] current_state, next_state;

// Wait State Signals
reg [5:0] csm_timer;
reg [5:0] csm_next_timer;
reg       csm_timeout;
reg       csm_to_ST_Init_1;
reg       csm_to_ST_Rest_2;
reg       csm_to_ST_Rest_RS_2;
reg       csm_to_ST_Read_RS_3;
reg       csm_to_ST_Read_RS_4;
reg       csm_to_ST_Read_RS_5;
reg       csm_to_ST_Rest_RS_3;
reg       csm_to_ST_Rest_RS_4;
reg       csm_to_ST_Rest_RS_5;
reg       csm_to_ST_Rest_RS_6;
reg       csm_to_ST_IODIRA1;
reg       csm_to_ST_Read_RS_8;
reg       csm_to_CS_low;
reg       csm_to_Read_Miso;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always @(
   csm_timeout, 
   current_state, 
   end_read_elink, 
   end_read_miso, 
   end_write_elink_spi, 
   irq_spi_tra, 
   rst, 
   start_bus_init, 
   start_mon_init, 
   start_power_off, 
   start_power_on, 
   start_read_mon
)
begin : next_state_block_proc
   // Default assignments to Wait State entry flags
   csm_to_ST_Init_1 = 1'b0;
   csm_to_ST_Rest_2 = 1'b0;
   csm_to_ST_Rest_RS_2 = 1'b0;
   csm_to_ST_Read_RS_3 = 1'b0;
   csm_to_ST_Read_RS_4 = 1'b0;
   csm_to_ST_Read_RS_5 = 1'b0;
   csm_to_ST_Rest_RS_3 = 1'b0;
   csm_to_ST_Rest_RS_4 = 1'b0;
   csm_to_ST_Rest_RS_5 = 1'b0;
   csm_to_ST_Rest_RS_6 = 1'b0;
   csm_to_ST_IODIRA1 = 1'b0;
   csm_to_ST_Read_RS_8 = 1'b0;
   csm_to_CS_low = 1'b0;
   csm_to_Read_Miso = 1'b0;
   case (current_state) 
      waittoact: begin
         if (start_bus_init  == 1)
            next_state = start;
         else if (start_mon_init ==1)
            next_state = start1;
         else if (start_power_on ==1)
            next_state = st_GPIOA3;
         else if (start_power_off ==1)
            next_state = st_GPIOA6;
         else if (start_read_mon ==1)
            next_state = ST_Read_reg5;
         else if (irq_spi_tra ==1)
            next_state = read_elink_mes1;
         else
            next_state = waittoact;
      end
      reset: begin
         if (rst == 1)
            next_state = waittoact;
         else
            next_state = reset;
      end
      ST_IODIRA: begin
         next_state = ST_IODIRA1;
         csm_to_ST_IODIRA1 = 1'b1;
      end
      start: begin
         next_state = ST_IODIRA;
      end
      ST_Init_1: begin
         if (csm_timeout)
            next_state = st_Init_2;
         else
            next_state = ST_Init_1;
      end
      st_Init_2: begin
         next_state = ST_Rest_1;
      end
      ST_Config1: begin
         next_state = ST_Config2;
      end
      write_csrs1: begin
         next_state = write_csrs2;
      end
      ST_Gain_calibrate: begin
         next_state = ST_Rest_RS_3;
         csm_to_ST_Rest_RS_3 = 1'b1;
      end
      endinit1: begin
         next_state = waittoact;
      end
      start1: begin
         next_state = ST_Init_1;
         csm_to_ST_Init_1 = 1'b1;
      end
      ST_Rest_1: begin
         next_state = ST_Rest_2;
         csm_to_ST_Rest_2 = 1'b1;
      end
      ST_Rest_2: begin
         if (csm_timeout)
            next_state = ST_Rest_4;
         else
            next_state = ST_Rest_2;
      end
      ST_Rest_4: begin
         next_state = St_wait;
      end
      ST_Rest_RS_1: begin
         next_state = ST_Rest_RS_2;
         csm_to_ST_Rest_RS_2 = 1'b1;
      end
      ST_Rest_RS_2: begin
         if (csm_timeout)
            next_state = St_wait1;
         else
            next_state = ST_Rest_RS_2;
      end
      St_wait: begin
         next_state = ST_Rest_RS_1;
      end
      St_wait1: begin
         next_state = ST_Read_reg;
      end
      St_wait2: begin
         next_state = ST_Config1;
      end
      ST_Config2: begin
         next_state = ST_Config3;
      end
      ST_Config3: begin
         next_state = ST_Config4;
      end
      ST_Config4: begin
         next_state = ST_Read_reg1;
      end
      ST_Read_reg: begin
         next_state = ST_Read_RS_3;
         csm_to_ST_Read_RS_3 = 1'b1;
      end
      ST_Read_RS_3: begin
         if (csm_timeout)
            next_state = St_wait2;
         else
            next_state = ST_Read_RS_3;
      end
      ST_Read_reg1: begin
         next_state = ST_Read_RS_4;
         csm_to_ST_Read_RS_4 = 1'b1;
      end
      ST_Read_RS_4: begin
         if (csm_timeout)
            next_state = St_wait3;
         else
            next_state = ST_Read_RS_4;
      end
      St_wait3: begin
         next_state = write_csrs1;
      end
      write_csrs2: begin
         next_state = write_csrs3;
      end
      write_csrs3: begin
         next_state = write_csrs4;
      end
      write_csrs4: begin
         next_state = write_csrs5;
      end
      write_csrs5: begin
         next_state = write_csrs6;
      end
      write_csrs6: begin
         next_state = write_csrs7;
      end
      write_csrs7: begin
         next_state = St_wait4;
      end
      ST_Read_reg2: begin
         next_state = ST_Read_RS_5;
         csm_to_ST_Read_RS_5 = 1'b1;
      end
      ST_Read_RS_5: begin
         if (csm_timeout)
            next_state = ST_Gain_calibrate;
         else
            next_state = ST_Read_RS_5;
      end
      St_wait4: begin
         next_state = ST_Read_reg2;
      end
      ST_calibrate1: begin
         next_state = ST_Rest_RS_4;
         csm_to_ST_Rest_RS_4 = 1'b1;
      end
      ST_calibrate2: begin
         next_state = ST_Rest_RS_5;
         csm_to_ST_Rest_RS_5 = 1'b1;
      end
      ST_calibrate3: begin
         next_state = ST_Rest_RS_6;
         csm_to_ST_Rest_RS_6 = 1'b1;
      end
      ST_Rest_RS_3: begin
         if (csm_timeout)
            next_state = ST_calibrate1;
         else
            next_state = ST_Rest_RS_3;
      end
      ST_Rest_RS_4: begin
         if (csm_timeout)
            next_state = ST_calibrate2;
         else
            next_state = ST_Rest_RS_4;
      end
      ST_Rest_RS_5: begin
         if (csm_timeout)
            next_state = ST_calibrate3;
         else
            next_state = ST_Rest_RS_5;
      end
      ST_Rest_RS_6: begin
         if (csm_timeout)
            next_state = endinit1;
         else
            next_state = ST_Rest_RS_6;
      end
      ST_IODIRA1: begin
         if (csm_timeout)
            next_state = St_wait5;
         else
            next_state = ST_IODIRA1;
      end
      st_IODIRB: begin
         next_state = st_IODIRB1;
      end
      st_IODIRB1: begin
         next_state = st_IODIRB2;
      end
      st_IODIRB2: begin
         next_state = St_wait6;
      end
      St_wait5: begin
         next_state = st_IODIRB;
      end
      St_wait6: begin
         next_state = st_GPIOB;
      end
      st_GPIOB: begin
         next_state = st_GPIOB1;
      end
      st_GPIOB1: begin
         next_state = st_GPIOB2;
      end
      st_GPIOB2: begin
         next_state = St_wait7;
      end
      St_wait7: begin
         next_state = st_GPPUA;
      end
      st_GPPUA: begin
         next_state = st_GPPUA1;
      end
      st_GPPUA1: begin
         next_state = st_GPPUA2;
      end
      st_GPPUA2: begin
         next_state = St_wait8;
      end
      St_wait8: begin
         next_state = st_GPPUB;
      end
      st_GPPUB: begin
         next_state = st_GPPUB1;
      end
      st_GPPUB1: begin
         next_state = st_GPPUB2;
      end
      st_GPPUB2: begin
         next_state = St_wait9;
      end
      St_wait9: begin
         next_state = st_GPIOA;
      end
      st_GPIOA: begin
         next_state = st_GPIOA1;
      end
      st_GPIOA1: begin
         next_state = st_GPIOA2;
      end
      st_GPIOA2: begin
         next_state = St_wait10;
      end
      St_wait10: begin
         next_state = End_Select;
      end
      End_Select: begin
         next_state = waittoact;
      end
      st_GPIOA3: begin
         next_state = st_GPIOA4;
      end
      st_GPIOA4: begin
         next_state = st_GPIOA5;
      end
      st_GPIOA5: begin
         next_state = waittoact;
      end
      st_GPIOA6: begin
         next_state = st_GPIOA7;
      end
      st_GPIOA7: begin
         next_state = st_GPIOA8;
      end
      st_GPIOA8: begin
         next_state = waittoact;
      end
      ST_Read_reg5: begin
         next_state = ST_Read_RS_8;
         csm_to_ST_Read_RS_8 = 1'b1;
      end
      ST_Read_RS_8: begin
         if (csm_timeout)
            next_state = waittoact;
         else
            next_state = ST_Read_RS_8;
      end
      Write_Mosi: begin
         next_state = CS_low;
         csm_to_CS_low = 1'b1;
      end
      read_elink_mes1: begin
         if (end_read_elink == 1)
            next_state = Write_Mosi;
         else
            next_state = read_elink_mes1;
      end
      CS_low: begin
         if (csm_timeout) begin
            next_state = Read_Miso;
            csm_to_Read_Miso = 1'b1;
         end
         else
            next_state = CS_low;
      end
      Read_Miso: begin
         if (csm_timeout)
            next_state = Wait_Miso;
         else
            next_state = Read_Miso;
      end
      Done: begin
         next_state = waittoact;
      end
      write_elink: begin
         if (end_write_elink_spi ==1)
            next_state = Done;
         else
            next_state = write_elink;
      end
      Wait_Miso: begin
         if (end_read_miso == 1)
            next_state = write_elink;
         else
            next_state = Wait_Miso;
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
   addr = 5'b11111;
   bus_en_done = 0;
   cs_m = 1;
   cs_p = 1;
   end_spi_proc = 0;
   entimeout = 1;
   mon_en_done = 0;
   read_spi_mode = 0;
   spi_cs = 1;
   start_cnt = 0;
   start_init = 0;
   start_read_elink = 0;
   start_read_miso = 0;
   start_write_elink_spi = 0;

   // Combined Actions
   case (current_state) 
      waittoact: begin
         entimeout =0;
      end
      reset: begin
         read_spi_mode =0;
      end
      ST_IODIRA: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      start: begin
         start_init =1;
      end
      ST_Init_1: begin
         addr = 5'h1;
         cs_m = 0 ;
      end
      st_Init_2: begin
         addr = 5'h2;
         cs_m = 0 ;
      end
      ST_Config1: begin
         addr = 5'h3 ;
         cs_m = 0 ;
      end
      write_csrs1: begin
         addr = 5'h9;
         cs_m = 0 ;
      end
      ST_Gain_calibrate: begin
         addr = 5'hF ;
         cs_m =0 ;
      end
      endinit1: begin
         mon_en_done=1;
      end
      start1: begin
         start_init =1;
      end
      ST_Rest_1: begin
         addr = 5'h3;
         cs_m = 0 ;
      end
      ST_Rest_2: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      ST_Rest_4: begin
         addr = 5'h5;
         cs_m = 0 ;
      end
      ST_Rest_RS_1: begin
         addr = 5'h3;
         cs_m = 0 ;
      end
      ST_Rest_RS_2: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      St_wait: begin
         cs_m = 0 ;
      end
      St_wait1: begin
         cs_m = 0 ;
      end
      St_wait2: begin
         cs_m = 0 ;
      end
      ST_Config2: begin
         addr = 5'h4 ;
         cs_m = 0 ;
      end
      ST_Config3: begin
         addr = 5'h8 ;
         cs_m = 0 ;
      end
      ST_Config4: begin
         addr = 5'h4 ;
         cs_m = 0 ;
      end
      ST_Read_reg: begin
         addr = 5'h7;
         cs_m = 0 ;
      end
      ST_Read_RS_3: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      ST_Read_reg1: begin
         addr = 5'h7;
         cs_m = 0 ;
      end
      ST_Read_RS_4: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      St_wait3: begin
         cs_m = 0 ;
      end
      write_csrs2: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      write_csrs3: begin
         addr = 5'hA;
         cs_m = 0 ;
      end
      write_csrs4: begin
         addr = 5'hB;
         cs_m = 0 ;
      end
      write_csrs5: begin
         addr = 5'hC;
         cs_m = 0 ;
      end
      write_csrs6: begin
         addr = 5'hD;
         cs_m = 0 ;
      end
      write_csrs7: begin
         addr = 5'hB;
         cs_m = 0 ;
      end
      ST_Read_reg2: begin
         addr = 5'hE;
         cs_m = 0 ;
      end
      ST_Read_RS_5: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      St_wait4: begin
         cs_m = 0 ;
      end
      ST_calibrate1: begin
         addr = 5'h10 ;
         cs_m =0 ;
      end
      ST_calibrate2: begin
         addr = 5'h11 ;
         cs_m =0 ;
      end
      ST_calibrate3: begin
         addr = 5'h12 ;
         cs_m =0 ;
      end
      ST_Rest_RS_3: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      ST_Rest_RS_4: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      ST_Rest_RS_5: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      ST_Rest_RS_6: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      ST_IODIRA1: begin
         addr = 5'h1A;
         cs_p = 0 ;
      end
      st_IODIRB: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_IODIRB1: begin
         addr = 5'h14;
         cs_p = 0 ;
      end
      st_IODIRB2: begin
         addr = 5'h1A;
         cs_p = 0 ;
      end
      St_wait5: begin
         cs_p = 0 ;
      end
      St_wait6: begin
         cs_p = 0 ;
      end
      st_GPIOB: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_GPIOB1: begin
         addr = 5'h15;
         cs_p = 0 ;
      end
      st_GPIOB2: begin
         addr = 5'h1A;
         cs_p = 0 ;
      end
      St_wait7: begin
         cs_p = 0 ;
      end
      st_GPPUA: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_GPPUA1: begin
         addr = 5'h16;
         cs_p = 0 ;
      end
      st_GPPUA2: begin
         addr = 5'h18;
         cs_p = 0 ;
      end
      St_wait8: begin
         cs_p = 0 ;
      end
      st_GPPUB: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_GPPUB1: begin
         addr = 5'h17;
         cs_p = 0 ;
      end
      st_GPPUB2: begin
         addr = 5'h19;
         cs_p = 0 ;
      end
      St_wait9: begin
         cs_p = 0 ;
      end
      st_GPIOA: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_GPIOA1: begin
         addr = 5'h1B;
         cs_p = 0 ;
      end
      st_GPIOA2: begin
         addr = 5'h14;
         cs_p = 0 ;
      end
      St_wait10: begin
         cs_p = 0 ;
      end
      End_Select: begin
         bus_en_done =1;
      end
      st_GPIOA3: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_GPIOA4: begin
         addr = 5'h1B;
         cs_p = 0 ;
      end
      st_GPIOA5: begin
         addr = 5'h14;
         cs_p = 0 ;
      end
      st_GPIOA6: begin
         addr = 5'h13;
         cs_p = 0 ;
      end
      st_GPIOA7: begin
         addr = 5'h1B;
         cs_p = 0 ;
      end
      st_GPIOA8: begin
         addr = 5'h1A;
         cs_p = 0 ;
      end
      ST_Read_reg5: begin
         addr = 5'h7;
         cs_m = 0 ;
      end
      ST_Read_RS_8: begin
         addr = 5'h4;
         cs_m = 0 ;
      end
      Write_Mosi: begin
         spi_cs =0;
         read_spi_mode =1;
      end
      read_elink_mes1: begin
         start_read_elink = 1 ;
         read_spi_mode =1;
      end
      CS_low: begin
         spi_cs = 0;
         read_spi_mode =1;
      end
      Read_Miso: begin
         start_read_miso =1;
         spi_cs = 0;
         read_spi_mode =1;
      end
      Done: begin
         end_spi_proc =1;
         read_spi_mode =1;
      end
      write_elink: begin
         start_write_elink_spi =1;
         read_spi_mode =1;
      end
   endcase
end // Output Block

//-----------------------------------------------------------------
// Clocked Block for machine csm
//-----------------------------------------------------------------
always @(
   posedge clk
) 
begin : clocked_block_proc
   if (!rst) begin
      current_state <= reset;
      csm_timer <= 6'd0;
   end
   else if (timeoutrst) begin
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
end // Clocked Block

//-----------------------------------------------------------------
// Wait state logic for machine csm
//-----------------------------------------------------------------
always @(
   csm_timer,
   csm_to_ST_Init_1,
   csm_to_ST_Rest_2,
   csm_to_ST_Rest_RS_2,
   csm_to_ST_Read_RS_3,
   csm_to_ST_Read_RS_4,
   csm_to_ST_Read_RS_5,
   csm_to_ST_Rest_RS_3,
   csm_to_ST_Rest_RS_4,
   csm_to_ST_Rest_RS_5,
   csm_to_ST_Rest_RS_6,
   csm_to_ST_IODIRA1,
   csm_to_ST_Read_RS_8,
   csm_to_CS_low,
   csm_to_Read_Miso
)
begin : csm_wait_block_proc
   csm_timeout = (csm_timer == 6'd0);
   if (csm_to_ST_Init_1 == 1'b1) begin
      csm_next_timer = 6'd14;  //no cycles(15)-1=14
   end
   else if (csm_to_ST_Rest_2 == 1'b1) begin
      csm_next_timer = 6'd1;  //no cycles(2)-1=1
   end
   else if (csm_to_ST_Rest_RS_2 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_Read_RS_3 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_Read_RS_4 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_Read_RS_5 == 1'b1) begin
      csm_next_timer = 6'd11;  //no cycles(12)-1=11
   end
   else if (csm_to_ST_Rest_RS_3 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_Rest_RS_4 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_Rest_RS_5 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_Rest_RS_6 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_ST_IODIRA1 == 1'b1) begin
      csm_next_timer = 6'd1;  //no cycles(2)-1=1
   end
   else if (csm_to_ST_Read_RS_8 == 1'b1) begin
      csm_next_timer = 6'd2;  //no cycles(3)-1=2
   end
   else if (csm_to_CS_low == 1'b1) begin
      csm_next_timer = 6'd9;  //no cycles(10)-1=9
   end
   else if (csm_to_Read_Miso == 1'b1) begin
      csm_next_timer = 6'd39;  //no cycles(40)-1=39
   end
   else begin
      csm_next_timer = (csm_timeout)? 6'd0: (csm_timer - 6'd1);
   end
end // Wait State Block
// State-As-Output assignment
always @(current_state)
statedeb = current_state;

endmodule // bus_control_SM