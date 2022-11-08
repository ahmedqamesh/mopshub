//
// Verilog Module mopshub_lib.select_io_modules
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:24:24 03/03/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

//`resetall
//`timescale 1ns/10ps
module select_io_module(
  input   wire           clk, 
  input   wire           clk_80, 
  input   wire           reset, 
  input   wire           rx_elink_n, 
  input   wire           rx_elink_p, 
  output  wire    [1:0]  rx_elink2bit, 
  input   wire    [1:0]  tx_elink2bit,
  output  wire           tx_elink_p,
  output  wire           tx_elink_n
  );
  wire def_value = 1'b0;
  wire en_value = 1'b1;
  wire           tx_elink1bit;
  wire           rx_elink1bit;
  //define the output rx Signal
   ISERDESE2 #(
      .DATA_RATE("SDR"),           // DDR, SDR
      .DATA_WIDTH(2),              // Parallel data width (2-8,10,14)
      .DYN_CLKDIV_INV_EN("FALSE"), // Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
      .DYN_CLK_INV_EN("FALSE"),    // Enable DYNCLKINVSEL inversion (FALSE, TRUE)
      // INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
      .INIT_Q1(1'b0),
      .INIT_Q2(1'b0),
      .INIT_Q3(1'b0),
      .INIT_Q4(1'b0),
      .INTERFACE_TYPE("NETWORKING"),   // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
      .IOBDELAY("NONE"),           // NONE, BOTH, IBUF, IFD
      .NUM_CE(1),                  // Number of clock enables (1,2)
      .OFB_USED("FALSE"),          // Select OFB path (FALSE, TRUE)
      .SERDES_MODE("MASTER"),      // MASTER, SLAVE
      // SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
      .SRVAL_Q1(1'b0),
      .SRVAL_Q2(1'b0),
      .SRVAL_Q3(1'b0),
      .SRVAL_Q4(1'b0)
   )
   
   
  ISERDESE2_inst (
  .O(),                       // 1-bit output: Combinatorial output
  .Q1(rx_elink2bit[0]),// Q1 - Q8: 1-bit (each) output: Registered data outputs
  .Q2(rx_elink2bit[1]),
  .Q3(),
  .Q4(),
  .Q5(),
  .Q6(),
  .Q7(),
  .Q8(),
  // SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
  .SHIFTOUT1(),
  .SHIFTOUT2(),
  .BITSLIP(en_value),           // 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
  // CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
  // to Q8 output ports will shift, as in a barrel-shifter operation, one
  // position every time Bitslip is invoked (DDR operation is different from
  // SDR).
  
  // CE1, CE2: 1-bit (each) input: Data register clock enable inputs
  .CE1(en_value),
  .CE2(en_value),
  .CLKDIVP(def_value),           // 1-bit input: TBD
  // Clocks: 1-bit (each) input: ISERDESE2 clock input ports
  .CLK(clk_80),                   // 1-bit input: High-speed clock
  .CLKB(!clk_80),                 // 1-bit input: High-speed secondary clock
  .CLKDIV(clk),             // 1-bit input: Divided clock
  .OCLK(def_value),                 // 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
  // Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
  .DYNCLKDIVSEL(def_value), // 1-bit input: Dynamic CLKDIV inversion
  .DYNCLKSEL(def_value),       // 1-bit input: Dynamic CLK/CLKB inversion
  // Input Data: 1-bit (each) input: ISERDESE2 data input ports
  .D(rx_elink1bit),                       // 1-bit input: Data input
  .DDLY(def_value),                 // 1-bit input: Serial data from IDELAYE2
  .OFB(def_value),                   // 1-bit input: Data feedback from OSERDESE2
  .OCLKB(def_value),               // 1-bit input: High speed negative edge output clock
  .RST(reset),                   // 1-bit input: Active high asynchronous reset
  // SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
  .SHIFTIN1(def_value),
  .SHIFTIN2(def_value)
  );
  
  //define the output tx Signal
   OSERDESE2 #(
      .DATA_RATE_OQ("SDR"),   // DDR, SDR
      .DATA_RATE_TQ("SDR"),   // DDR, BUF, SDR
      .DATA_WIDTH(2),         // Parallel data width (2-8,10,14)
      .INIT_OQ(1'b0),         // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ(1'b0),         // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE("MASTER"), // MASTER, SLAVE
      .SRVAL_OQ(1'b0),        // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ(1'b0),        // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL("FALSE"),    // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC("FALSE"),    // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH(1'b1))
       
      OSERDESE2_inst (
      .OFB(),             // 1-bit output: Feedback path for data
      .OQ(tx_elink1bit),               // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1(),
      .SHIFTOUT2(),
      .TBYTEOUT(),   // 1-bit output: Byte group tristate
      .TFB(),             // 1-bit output: 3-state control
      .TQ(),               // 1-bit output: 3-state control
      .CLK(clk_80),             // 1-bit input: High speed clock
      .CLKDIV(clk),       // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1(tx_elink2bit[0]),
      .D2(tx_elink2bit[1]),
      .D3(def_value),
      .D4(def_value),
      .D5(def_value),
      .D6(def_value),
      .D7(def_value),
      .D8(def_value),
      .OCE(en_value),             // 1-bit input: Output data clock enable
      .RST(reset),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1(def_value),
      .SHIFTIN2(def_value),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1(def_value),
      .T2(def_value),
      .T3(def_value),
      .T4(def_value),
      .TBYTEIN(def_value),     // 1-bit input: Byte group tristate
      .TCE(def_value)              // 1-bit input: 3-state clock enable
      );
      


//brign the differential signals
OBUFDS edout_buf (
        .I (tx_elink1bit),
        .O (tx_elink_p),
        .OB(tx_elink_n)
        );
        
//edin buffer [Differential Input Buffer Primitives]
IBUFDS edin_buf (
        .I (rx_elink_p),
        .IB(rx_elink_n),
        .O (rx_elink1bit)
      );




endmodule
