//
// Module mopshub_triplicated.generalregister2TMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:05 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module generalregister2TMR( 
   // Port Declarations
   input   wire            clkA, 
   input   wire            clkB, 
   input   wire            clkC, 
   input   wire            rstA, 
   input   wire            rstB, 
   input   wire            rstC, 
   input   wire            cpuA, 
   input   wire            cpuB, 
   input   wire            cpuC, 
   input   wire            canA, 
   input   wire            canB, 
   input   wire            canC, 
   input   wire            bofA, 
   input   wire            bofB, 
   input   wire            bofC, 
   input   wire            eraA, 
   input   wire            eraB, 
   input   wire            eraC, 
   input   wire            erpA, 
   input   wire            erpB, 
   input   wire            erpC, 
   input   wire            warA, 
   input   wire            warB, 
   input   wire            warC, 
   input   wire    [2:0]   sjwA, 
   input   wire    [2:0]   sjwB, 
   input   wire    [2:0]   sjwC, 
   input   wire    [2:0]   tseg1A, 
   input   wire    [2:0]   tseg1B, 
   input   wire    [2:0]   tseg1C, 
   input   wire    [2:0]   tseg2A, 
   input   wire    [2:0]   tseg2B, 
   input   wire    [2:0]   tseg2C, 
   input   wire            sspA, 
   input   wire            sspB, 
   input   wire            sspC, 
   input   wire            srpA, 
   input   wire            srpB, 
   input   wire            srpC, 
   input   wire            sscA, 
   input   wire            sscB, 
   input   wire            sscC, 
   input   wire            srcA, 
   input   wire            srcB, 
   input   wire            srcC, 
   input   wire            rspA, 
   input   wire            rspB, 
   input   wire            rspC, 
   output  wire    [15:0]  registerA, 
   output  wire    [15:0]  registerB, 
   output  wire    [15:0]  registerC
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wor          register_iTmrErrorC;
wire  [15:0] register_iVotedC;
wor          register_iTmrErrorB;
wire  [15:0] register_iVotedB;
wor          register_iTmrErrorA;
wire  [15:0] register_iVotedA;
reg   [15:0] register_iA;
reg   [15:0] register_iB;
reg   [15:0] register_iC;


// Instances 
majorityVoter #(16) register_iVoterA( 
   .inA    (register_iA), 
   .inB    (register_iB), 
   .inC    (register_iC), 
   .out    (register_iVotedA), 
   .tmrErr (register_iTmrErrorA)
); 

majorityVoter #(16) register_iVoterB( 
   .inA    (register_iA), 
   .inB    (register_iB), 
   .inC    (register_iC), 
   .out    (register_iVotedB), 
   .tmrErr (register_iTmrErrorB)
); 

majorityVoter #(16) register_iVoterC( 
   .inA    (register_iA), 
   .inB    (register_iB), 
   .inC    (register_iC), 
   .out    (register_iVotedC), 
   .tmrErr (register_iTmrErrorC)
); 

// HDL Embedded Text Block 1 eb1
assign registerA =  register_iVotedA;
assign registerB =  register_iVotedB;
assign registerC =  register_iVotedC;
// HDL Embedded Text Block 2 eb2
always @( posedge clkA )
  begin
    if (rstA==1'b0)
      begin
        register_iA <= 16'b0000000010101100;
      end
    else
      begin
        register_iA <= register_iVotedA;
        register_iA[15]  <= bofA;
        register_iA[14]  <= eraA;
        register_iA[13]  <= erpA;
        register_iA[12]  <= warA;
        if (canA==1'b1)
          begin
            register_iA[11]  <= sscA;
            register_iA[10]  <= srcA;
          end
        else
          if (cpuA==1'b1)
            begin
              register_iA[11]  <= sspA;
              register_iA[10]  <= srpA;
              register_iA[9]  <= rspA;
              register_iA[8:6]  <= sjwA;
              register_iA[5:3]  <= tseg1A;
              register_iA[2:0]  <= tseg2A;
            end
      end
  end
// HDL Embedded Text Block 3 eb3
always @( posedge clkB )
  begin
    if (rstB==1'b0)
      begin
        register_iB <= 16'b0000000010101100;
      end
    else
      begin
        register_iB <= register_iVotedB;
        register_iB[15]  <= bofB;
        register_iB[14]  <= eraB;
        register_iB[13]  <= erpB;
        register_iB[12]  <= warB;
        if (canB==1'b1)
          begin
            register_iB[11]  <= sscB;
            register_iB[10]  <= srcB;
          end
        else
          if (cpuB==1'b1)
            begin
              register_iB[11]  <= sspB;
              register_iB[10]  <= srpB;
              register_iB[9]  <= rspB;
              register_iB[8:6]  <= sjwB;
              register_iB[5:3]  <= tseg1B;
              register_iB[2:0]  <= tseg2B;
            end
      end
  end
// HDL Embedded Text Block 4 eb4
always @( posedge clkC )
  begin
    if (rstC==1'b0)
      begin
        register_iC <= 16'b0000000010101100;
      end
    else
      begin
        register_iC <= register_iVotedC;
        register_iC[15]  <= bofC;
        register_iC[14]  <= eraC;
        register_iC[13]  <= erpC;
        register_iC[12]  <= warC;
        if (canC==1'b1)
          begin
            register_iC[11]  <= sscC;
            register_iC[10]  <= srcC;
          end
        else
          if (cpuC==1'b1)
            begin
              register_iC[11]  <= sspC;
              register_iC[10]  <= srpC;
              register_iC[9]  <= rspC;
              register_iC[8:6]  <= sjwC;
              register_iC[5:3]  <= tseg1C;
              register_iC[2:0]  <= tseg2C;
            end
      end
  end

endmodule // generalregister2TMR
