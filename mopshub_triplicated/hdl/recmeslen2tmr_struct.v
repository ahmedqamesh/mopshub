//
// Module mopshub_triplicated.recmeslen2TMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:07 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module recmeslen2TMR( 
   // Port Declarations
   input   wire           clockA, 
   input   wire           clockB, 
   input   wire           clockC, 
   input   wire           activA, 
   input   wire           activB, 
   input   wire           activC, 
   input   wire           resetA, 
   input   wire           resetB, 
   input   wire           resetC, 
   input   wire    [2:0]  setrmlenA, 
   input   wire    [2:0]  setrmlenB, 
   input   wire    [2:0]  setrmlenC, 
   output  wire    [3:0]  rmlbA, 
   output  wire    [3:0]  rmlbB, 
   output  wire    [3:0]  rmlbC
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wor         rmlb_regTmrErrorC;
wire  [3:0] rmlb_regVotedC;
wor         edgedTmrErrorC;
wire        edgedVotedC;
wor         rmlb_regTmrErrorB;
wire  [3:0] rmlb_regVotedB;
wor         edgedTmrErrorB;
wire        edgedVotedB;
wor         rmlb_regTmrErrorA;
wire  [3:0] rmlb_regVotedA;
wor         edgedTmrErrorA;
wire        edgedVotedA;
reg         edgedA;
reg         edgedB;
reg         edgedC;
reg   [3:0] rmlb_regA;
reg   [3:0] rmlb_regB;
reg   [3:0] rmlb_regC;
wire  [2:0] setrmlen_regA;
wire  [2:0] setrmlen_regB;
wire  [2:0] setrmlen_regC;


// Instances 
majorityVoter edgedVoterA( 
   .inA    (edgedA), 
   .inB    (edgedB), 
   .inC    (edgedC), 
   .out    (edgedVotedA), 
   .tmrErr (edgedTmrErrorA)
); 

majorityVoter edgedVoterB( 
   .inA    (edgedA), 
   .inB    (edgedB), 
   .inC    (edgedC), 
   .out    (edgedVotedB), 
   .tmrErr (edgedTmrErrorB)
); 

majorityVoter edgedVoterC( 
   .inA    (edgedA), 
   .inB    (edgedB), 
   .inC    (edgedC), 
   .out    (edgedVotedC), 
   .tmrErr (edgedTmrErrorC)
); 

majorityVoter #(4) rmlb_regVoterA( 
   .inA    (rmlb_regA), 
   .inB    (rmlb_regB), 
   .inC    (rmlb_regC), 
   .out    (rmlb_regVotedA), 
   .tmrErr (rmlb_regTmrErrorA)
); 

majorityVoter #(4) rmlb_regVoterB( 
   .inA    (rmlb_regA), 
   .inB    (rmlb_regB), 
   .inC    (rmlb_regC), 
   .out    (rmlb_regVotedB), 
   .tmrErr (rmlb_regTmrErrorB)
); 

majorityVoter #(4) rmlb_regVoterC( 
   .inA    (rmlb_regA), 
   .inB    (rmlb_regB), 
   .inC    (rmlb_regC), 
   .out    (rmlb_regVotedC), 
   .tmrErr (rmlb_regTmrErrorC)
); 

// HDL Embedded Text Block 1 eb1
assign rmlbA =  rmlb_regVotedA;
assign rmlbB =  rmlb_regVotedB;
assign rmlbC =  rmlb_regVotedC;
assign setrmlen_regA =  setrmlenA;
assign setrmlen_regB =  setrmlenB;
assign setrmlen_regC =  setrmlenC;
// HDL Embedded Text Block 2 eb2
always @( posedge clockA )
  begin
    if (resetA==1'b0)
      begin
        rmlb_regA <= 4'b0000;
        edgedA =  1'b0;
      end
    else
      begin
        edgedA =  edgedVotedA;
        rmlb_regA <= rmlb_regVotedA;
        if (activA==1'b1)
          begin
            if (edgedVotedA==1'b0)
              begin
                edgedA =  1'b1;
                if (setrmlen_regA==3'd1)
                  rmlb_regA[0]  <= 1'b1;
                else
                  if (setrmlen_regA==3'd2)
                    rmlb_regA[1]  <= 1'b1;
                  else
                    if (setrmlen_regA==3'd3)
                      rmlb_regA[2]  <= 1'b1;
                    else
                      if (setrmlen_regA==3'd4)
                        rmlb_regA[3]  <= 1'b1;
              end
            else
              begin
                edgedA =  1'b1;
              end
          end
        else
          edgedA =  1'b0;
      end
  end
// HDL Embedded Text Block 3 eb3
always @( posedge clockB )
  begin
    if (resetB==1'b0)
      begin
        rmlb_regB <= 4'b0000;
        edgedB =  1'b0;
      end
    else
      begin
        edgedB =  edgedVotedB;
        rmlb_regB <= rmlb_regVotedB;
        if (activB==1'b1)
          begin
            if (edgedVotedB==1'b0)
              begin
                edgedB =  1'b1;
                if (setrmlen_regB==3'd1)
                  rmlb_regB[0]  <= 1'b1;
                else
                  if (setrmlen_regB==3'd2)
                    rmlb_regB[1]  <= 1'b1;
                  else
                    if (setrmlen_regB==3'd3)
                      rmlb_regB[2]  <= 1'b1;
                    else
                      if (setrmlen_regB==3'd4)
                        rmlb_regB[3]  <= 1'b1;
              end
            else
              begin
                edgedB =  1'b1;
              end
          end
        else
          edgedB =  1'b0;
      end
  end
// HDL Embedded Text Block 4 eb4
always @( posedge clockC )
  begin
    if (resetC==1'b0)
      begin
        rmlb_regC <= 4'b0000;
        edgedC =  1'b0;
      end
    else
      begin
        edgedC =  edgedVotedC;
        rmlb_regC <= rmlb_regVotedC;
        if (activC==1'b1)
          begin
            if (edgedVotedC==1'b0)
              begin
                edgedC =  1'b1;
                if (setrmlen_regC==3'd1)
                  rmlb_regC[0]  <= 1'b1;
                else
                  if (setrmlen_regC==3'd2)
                    rmlb_regC[1]  <= 1'b1;
                  else
                    if (setrmlen_regC==3'd3)
                      rmlb_regC[2]  <= 1'b1;
                    else
                      if (setrmlen_regC==3'd4)
                        rmlb_regC[3]  <= 1'b1;
              end
            else
              begin
                edgedC =  1'b1;
              end
          end
        else
          edgedC =  1'b0;
      end
  end

endmodule // recmeslen2TMR
