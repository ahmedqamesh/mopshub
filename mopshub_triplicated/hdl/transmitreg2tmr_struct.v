//
// Module mopshub_triplicated.transmitreg2TMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:06 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module transmitreg2TMR( 
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
   input   wire    [15:0]  reginpA, 
   input   wire    [15:0]  reginpB, 
   input   wire    [15:0]  reginpC, 
   output  wire    [15:0]  regoutA, 
   output  wire    [15:0]  regoutB, 
   output  wire    [15:0]  regoutC
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
assign regoutA =  register_iVotedA;
assign regoutB =  register_iVotedB;
assign regoutC =  register_iVotedC;
// HDL Embedded Text Block 2 eb2
always @( posedge clkA )
  begin
    if (rstA==1'b0)
      begin
        register_iA <= 16'd0;
      end
    else
      if (cpuA==1'b1)
        begin
          register_iA <= reginpA;
        end
      else
        register_iA <= register_iVotedA;
  end
// HDL Embedded Text Block 3 eb3
always @( posedge clkB )
  begin
    if (rstB==1'b0)
      begin
        register_iB <= 16'd0;
      end
    else
      if (cpuB==1'b1)
        begin
          register_iB <= reginpB;
        end
      else
        register_iB <= register_iVotedB;
  end
// HDL Embedded Text Block 4 eb4
always @( posedge clkC )
  begin
    if (rstC==1'b0)
      begin
        register_iC <= 16'd0;
      end
    else
      if (cpuC==1'b1)
        begin
          register_iC <= reginpC;
        end
      else
        register_iC <= register_iVotedC;
  end

endmodule // transmitreg2TMR
