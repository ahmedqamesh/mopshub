//
// Module mopshub_triplicated.resetgen2TMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:09 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module resetgen2TMR( 
   // Port Declarations
   input   wire      clockA, 
   input   wire      clockB, 
   input   wire      clockC, 
   input   wire      resetA, 
   input   wire      resetB, 
   input   wire      resetC, 
   output  wire      sync_resetA, 
   output  wire      sync_resetB, 
   output  wire      sync_resetC
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wor         countTmrErrorC;
wire  [1:0] countVotedC;
wor         activeTmrErrorC;
wire        activeVotedC;
wor         countTmrErrorB;
wire  [1:0] countVotedB;
wor         activeTmrErrorB;
wire        activeVotedB;
wor         countTmrErrorA;
wire  [1:0] countVotedA;
wor         activeTmrErrorA;
wire        activeVotedA;
reg         activeA;
reg         activeB;
reg         activeC;
reg   [1:0] countA;
reg   [1:0] countB;
reg   [1:0] countC;


// Instances 
majorityVoter activeVoterA( 
   .inA    (activeA), 
   .inB    (activeB), 
   .inC    (activeC), 
   .out    (activeVotedA), 
   .tmrErr (activeTmrErrorA)
); 

majorityVoter activeVoterB( 
   .inA    (activeA), 
   .inB    (activeB), 
   .inC    (activeC), 
   .out    (activeVotedB), 
   .tmrErr (activeTmrErrorB)
); 

majorityVoter activeVoterC( 
   .inA    (activeA), 
   .inB    (activeB), 
   .inC    (activeC), 
   .out    (activeVotedC), 
   .tmrErr (activeTmrErrorC)
); 

majorityVoter #(2) countVoterA( 
   .inA    (countA), 
   .inB    (countB), 
   .inC    (countC), 
   .out    (countVotedA), 
   .tmrErr (countTmrErrorA)
); 

majorityVoter #(2) countVoterB( 
   .inA    (countA), 
   .inB    (countB), 
   .inC    (countC), 
   .out    (countVotedB), 
   .tmrErr (countTmrErrorB)
); 

majorityVoter #(2) countVoterC( 
   .inA    (countA), 
   .inB    (countB), 
   .inC    (countC), 
   .out    (countVotedC), 
   .tmrErr (countTmrErrorC)
); 

// HDL Embedded Text Block 1 eb1
always @( posedge clockA or negedge resetA )
  begin
    if (resetA==1'b0)
      begin
        activeA <= 1'b1;
        countA <= 2'b00;
      end
    else
      begin
        countA <= countVotedA;
        activeA <= activeVotedA;
        if (activeVotedA==1'b1)
          if (countVotedA==2'b11)
            activeA <= 1'b0;
          else
            countA <= countVotedA+1;
      end
  end
// HDL Embedded Text Block 2 eb2
always @( posedge clockB or negedge resetB )
  begin
    if (resetB==1'b0)
      begin
        activeB <= 1'b1;
        countB <= 2'b00;
      end
    else
      begin
        countB <= countVotedB;
        activeB <= activeVotedB;
        if (activeVotedB==1'b1)
          if (countVotedB==2'b11)
            activeB <= 1'b0;
          else
            countB <= countVotedB+1;
      end
  end
// HDL Embedded Text Block 3 eb3
always @( posedge clockC or negedge resetC )
  begin
    if (resetC==1'b0)
      begin
        activeC <= 1'b1;
        countC <= 2'b00;
      end
    else
      begin
        countC <= countVotedC;
        activeC <= activeVotedC;
        if (activeVotedC==1'b1)
          if (countVotedC==2'b11)
            activeC <= 1'b0;
          else
            countC <= countVotedC+1;
      end
  end
// HDL Embedded Text Block 4 eb4
assign sync_resetA =  resetA&~activeVotedA;
assign sync_resetB =  resetB&~activeVotedB;
assign sync_resetC =  resetC&~activeVotedC;

endmodule // resetgen2TMR

