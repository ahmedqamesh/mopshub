//
// Module mopshub_triplicated.PID_ReglerTMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:04 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`timescale  1ns / 1ns
module PID_ReglerTMR( 
   FTRIMA, 
   FTRIMB, 
   FTRIMC, 
   CLKA, 
   CLKB, 
   CLKC, 
   EkA, 
   EkB, 
   EkC, 
   EnableA, 
   EnableB, 
   EnableC, 
   KdA, 
   KdB, 
   KdC, 
   KiA, 
   KiB, 
   KiC, 
   KpA, 
   KpB, 
   KpC, 
   ResetA, 
   ResetB, 
   ResetC, 
   ctrlA, 
   ctrlB, 
   ctrlC
);


// Internal Declarations

output [5:0] FTRIMA;
output [5:0] FTRIMB;
output [5:0] FTRIMC;
input        CLKA;
input        CLKB;
input        CLKC;
input  [7:0] EkA;
input  [7:0] EkB;
input  [7:0] EkC;
input        EnableA;
input        EnableB;
input        EnableC;
input  [7:0] KdA;
input  [7:0] KdB;
input  [7:0] KdC;
input  [7:0] KiA;
input  [7:0] KiB;
input  [7:0] KiC;
input  [7:0] KpA;
input  [7:0] KpB;
input  [7:0] KpC;
input        ResetA;
input        ResetB;
input        ResetC;
input  [2:0] ctrlA;
input  [2:0] ctrlB;
input  [2:0] ctrlC;


wire [5:0] FTRIMA;
wire [5:0] FTRIMB;
wire [5:0] FTRIMC;
wire       CLKA;
wire       CLKB;
wire       CLKC;
wire [7:0] EkA;
wire [7:0] EkB;
wire [7:0] EkC;
wire       EnableA;
wire       EnableB;
wire       EnableC;
wire [7:0] KdA;
wire [7:0] KdB;
wire [7:0] KdC;
wire [7:0] KiA;
wire [7:0] KiB;
wire [7:0] KiC;
wire [7:0] KpA;
wire [7:0] KpB;
wire [7:0] KpC;
wire       ResetA;
wire       ResetB;
wire       ResetC;
wire [2:0] ctrlA;
wire [2:0] ctrlB;
wire [2:0] ctrlC;

// Local declarations

// Internal signal declarations
wire [7:0]  DiffA;
wire [7:0]  DiffB;
wire [7:0]  DiffC;
wire [8:0]  SumEkA;
wire [8:0]  SumEkB;
wire [8:0]  SumEkC;
wire [15:0] ProdpA;
wire [15:0] ProdpB;
wire [15:0] ProdpC;
wire [17:0] SumPIDA;
wire [17:0] SumPIDB;
wire [17:0] SumPIDC;
wire [15:0] ProddA;
wire [15:0] ProddB;
wire [15:0] ProddC;
wire [16:0] ProdiA;
wire [16:0] ProdiB;
wire [16:0] ProdiC;
wire        PID_EnA;
wire        PID_EnB;
wire        PID_EnC;


// Instances 
AccumulatorTMR Acc0( 
   .clk_iA  (CLKA), 
   .clk_iB  (CLKB), 
   .clk_iC  (CLKC), 
   .rst_niA (ResetA), 
   .rst_niB (ResetB), 
   .rst_niC (ResetC), 
   .EnableA (EnableA), 
   .EnableB (EnableB), 
   .EnableC (EnableC), 
   .a_iA    (EkA), 
   .a_iB    (EkB), 
   .a_iC    (EkC), 
   .sum_oA  (SumEkA), 
   .sum_oB  (SumEkB), 
   .sum_oC  (SumEkC)
); 

Add_PIDTMR AddPID0( 
   .AA (ProdpA), 
   .AB (ProdpB), 
   .AC (ProdpC), 
   .BA (ProdiA), 
   .BB (ProdiB), 
   .BC (ProdiC), 
   .CA (ProddA), 
   .CB (ProddB), 
   .CC (ProddC), 
   .DA (SumPIDA), 
   .DB (SumPIDB), 
   .DC (SumPIDC)
); 

DiffTMR Diff0( 
   .CLKA    (CLKA), 
   .CLKB    (CLKB), 
   .CLKC    (CLKC), 
   .ResetA  (ResetA), 
   .ResetB  (ResetB), 
   .ResetC  (ResetC), 
   .EnableA (EnableA), 
   .EnableB (EnableB), 
   .EnableC (EnableC), 
   .a_iA    (EkA), 
   .a_iB    (EkB), 
   .a_iC    (EkC), 
   .diff_oA (DiffA), 
   .diff_oB (DiffB), 
   .diff_oC (DiffC)
); 

Ftrim_EnTMR Frtim_En0( 
   .CLKA    (CLKA), 
   .CLKB    (CLKB), 
   .CLKC    (CLKC), 
   .resetA  (ResetA), 
   .resetB  (ResetB), 
   .resetC  (ResetC), 
   .EnableA (EnableA), 
   .EnableB (EnableB), 
   .EnableC (EnableC), 
   .PID_EnA (PID_EnA), 
   .PID_EnB (PID_EnB), 
   .PID_EnC (PID_EnC)
); 

MultiTMR MultiD( 
   .a_iA    (DiffA), 
   .a_iB    (DiffB), 
   .a_iC    (DiffC), 
   .b_iA    (KdA), 
   .b_iB    (KdB), 
   .b_iC    (KdC), 
   .prod_oA (ProddA), 
   .prod_oB (ProddB), 
   .prod_oC (ProddC)
); 

MultiTMR MultiP( 
   .a_iA    (EkA), 
   .a_iB    (EkB), 
   .a_iC    (EkC), 
   .b_iA    (KpA), 
   .b_iB    (KpB), 
   .b_iC    (KpC), 
   .prod_oA (ProdpA), 
   .prod_oB (ProdpB), 
   .prod_oC (ProdpC)
); 

Multi_iTMR MultiI( 
   .a_iA    (SumEkA), 
   .a_iB    (SumEkB), 
   .a_iC    (SumEkC), 
   .b_iA    (KiA), 
   .b_iB    (KiB), 
   .b_iC    (KiC), 
   .prod_oA (ProdiA), 
   .prod_oB (ProdiB), 
   .prod_oC (ProdiC)
); 

Output_ScalingTMR OutputScaling0( 
   .AA      (SumPIDA), 
   .AB      (SumPIDB), 
   .AC      (SumPIDC), 
   .ResetA  (ResetA), 
   .ResetB  (ResetB), 
   .ResetC  (ResetC), 
   .CLKA    (CLKA), 
   .CLKB    (CLKB), 
   .CLKC    (CLKC), 
   .EnableA (PID_EnA), 
   .EnableB (PID_EnB), 
   .EnableC (PID_EnC), 
   .BA      (FTRIMA), 
   .BB      (FTRIMB), 
   .BC      (FTRIMC)
); 


endmodule // PID_ReglerTMR

