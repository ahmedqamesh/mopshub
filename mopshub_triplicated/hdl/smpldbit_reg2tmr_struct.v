//
// Module mopshub_triplicated.smpldbit_reg2TMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:04 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module smpldbit_reg2TMR( 
   // Port Declarations
   input   wire           clockA, 
   input   wire           clockB, 
   input   wire           clockC, 
   input   wire           resetA, 
   input   wire           resetB, 
   input   wire           resetC, 
   input   wire    [1:0]  ctrlA, 
   input   wire    [1:0]  ctrlB, 
   input   wire    [1:0]  ctrlC, 
   output  wire           smpldbitA, 
   output  wire           smpldbitB, 
   output  wire           smpldbitC, 
   input   wire           pufferA, 
   input   wire           pufferB, 
   input   wire           pufferC
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wor    smpldbit_iTmrErrorC;
wire   smpldbit_iVotedC;
wor    smpldbit_iTmrErrorB;
wire   smpldbit_iVotedB;
wor    smpldbit_iTmrErrorA;
wire   smpldbit_iVotedA;
reg    smpldbit_iA;
reg    smpldbit_iB;
reg    smpldbit_iC;


// Instances 
majorityVoter smpldbit_iVoterA( 
   .inA    (smpldbit_iA), 
   .inB    (smpldbit_iB), 
   .inC    (smpldbit_iC), 
   .out    (smpldbit_iVotedA), 
   .tmrErr (smpldbit_iTmrErrorA)
); 

majorityVoter smpldbit_iVoterB( 
   .inA    (smpldbit_iA), 
   .inB    (smpldbit_iB), 
   .inC    (smpldbit_iC), 
   .out    (smpldbit_iVotedB), 
   .tmrErr (smpldbit_iTmrErrorB)
); 

majorityVoter smpldbit_iVoterC( 
   .inA    (smpldbit_iA), 
   .inB    (smpldbit_iB), 
   .inC    (smpldbit_iC), 
   .out    (smpldbit_iVotedC), 
   .tmrErr (smpldbit_iTmrErrorC)
); 

// HDL Embedded Text Block 1 eb1
assign smpldbitA =  smpldbit_iVotedA;
assign smpldbitB =  smpldbit_iVotedB;
assign smpldbitC =  smpldbit_iVotedC;
// HDL Embedded Text Block 2 eb2
always @( posedge clockA or negedge resetA )
  begin
    if (resetA==1'b0)
      smpldbit_iA <= 1'b1;
    else
      begin
        case (ctrlA)
          2'b01 : smpldbit_iA <= 1'b1;
          2'b10 : smpldbit_iA <= pufferA;
          default : smpldbit_iA <= smpldbit_iVotedA;
        endcase
      end
  end
// HDL Embedded Text Block 3 eb3
always @( posedge clockB or negedge resetB )
  begin
    if (resetB==1'b0)
      smpldbit_iB <= 1'b1;
    else
      begin
        case (ctrlB)
          2'b01 : smpldbit_iB <= 1'b1;
          2'b10 : smpldbit_iB <= pufferB;
          default : smpldbit_iB <= smpldbit_iVotedB;
        endcase
      end
  end
// HDL Embedded Text Block 4 eb4
always @( posedge clockC or negedge resetC )
  begin
    if (resetC==1'b0)
      smpldbit_iC <= 1'b1;
    else
      begin
        case (ctrlC)
          2'b01 : smpldbit_iC <= 1'b1;
          2'b10 : smpldbit_iC <= pufferC;
          default : smpldbit_iC <= smpldbit_iVotedC;
        endcase
      end
  end

endmodule // smpldbit_reg2TMR

