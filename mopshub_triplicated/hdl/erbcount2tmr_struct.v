//
// Module mopshub_triplicated.erbcount2TMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:05 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module erbcount2TMR( 
   // Port Declarations
   input   wire      clockA, 
   input   wire      clockB, 
   input   wire      clockC, 
   input   wire      resetA, 
   input   wire      resetB, 
   input   wire      resetC, 
   input   wire      elevrecbA, 
   input   wire      elevrecbB, 
   input   wire      elevrecbC, 
   output  reg       erb_eq128A, 
   output  reg       erb_eq128B, 
   output  reg       erb_eq128C
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wor         edgedTmrErrorC;
wire        edgedVotedC;
wor         counterTmrErrorC;
wire  [7:0] counterVotedC;
wor         edgedTmrErrorB;
wire        edgedVotedB;
wor         counterTmrErrorB;
wire  [7:0] counterVotedB;
wor         edgedTmrErrorA;
wire        edgedVotedA;
wor         counterTmrErrorA;
wire  [7:0] counterVotedA;
reg   [7:0] counterA;
reg   [7:0] counterB;
reg   [7:0] counterC;
reg         edgedA;
reg         edgedB;
reg         edgedC;


// Instances 
majorityVoter #(8) counterVoterA( 
   .inA    (counterA), 
   .inB    (counterB), 
   .inC    (counterC), 
   .out    (counterVotedA), 
   .tmrErr (counterTmrErrorA)
); 

majorityVoter #(8) counterVoterB( 
   .inA    (counterA), 
   .inB    (counterB), 
   .inC    (counterC), 
   .out    (counterVotedB), 
   .tmrErr (counterTmrErrorB)
); 

majorityVoter #(8) counterVoterC( 
   .inA    (counterA), 
   .inB    (counterB), 
   .inC    (counterC), 
   .out    (counterVotedC), 
   .tmrErr (counterTmrErrorC)
); 

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

// HDL Embedded Text Block 1 eb1
always @( posedge clockA )
  begin
    if (resetA==1'b0)
      begin
        counterA <= 8'd0;
        edgedA <= 1'b0;
      end
    else
      begin
        counterA <= counterVotedA;
        edgedA <= edgedVotedA;
        if (elevrecbA==1'b1)
          begin
            if (edgedVotedA==1'b0)
              begin
                edgedA <= 1'b1;
                if (counterA<8'd128)
                  counterA <= counterVotedA+1;
              end
          end
        else
          edgedA <= 1'b0;
      end
  end
// HDL Embedded Text Block 2 eb2
always @( posedge clockB )
  begin
    if (resetB==1'b0)
      begin
        counterB <= 8'd0;
        edgedB <= 1'b0;
      end
    else
      begin
        counterB <= counterVotedB;
        edgedB <= edgedVotedB;
        if (elevrecbB==1'b1)
          begin
            if (edgedVotedB==1'b0)
              begin
                edgedB <= 1'b1;
                if (counterB<8'd128)
                  counterB <= counterVotedB+1;
              end
          end
        else
          edgedB <= 1'b0;
      end
  end
// HDL Embedded Text Block 3 eb3
always @( posedge clockC )
  begin
    if (resetC==1'b0)
      begin
        counterC <= 8'd0;
        edgedC <= 1'b0;
      end
    else
      begin
        counterC <= counterVotedC;
        edgedC <= edgedVotedC;
        if (elevrecbC==1'b1)
          begin
            if (edgedVotedC==1'b0)
              begin
                edgedC <= 1'b1;
                if (counterC<8'd128)
                  counterC <= counterVotedC+1;
              end
          end
        else
          edgedC <= 1'b0;
      end
  end
// HDL Embedded Text Block 4 eb4
always @( counterVotedA )
  begin
    if (counterVotedA==8'd128)
      erb_eq128A =  1'b1;
    else
      erb_eq128A =  1'b0;
  end
// HDL Embedded Text Block 5 eb5
always @( counterVotedB )
  begin
    if (counterVotedB==8'd128)
      erb_eq128B =  1'b1;
    else
      erb_eq128B =  1'b0;
  end
// HDL Embedded Text Block 6 eb6
always @( counterVotedC )
  begin
    if (counterVotedC==8'd128)
      erb_eq128C =  1'b1;
    else
      erb_eq128C =  1'b0;
  end

endmodule // erbcount2TMR

