/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/fastshift2TMR.v                                                               *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:35                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: fastshift2.v                                                                           *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 3772                                                               *
 *           MD5 hash          : 645cdc1f2afdfa7ed7db7efc58035741                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module fastshift2TMR(
  input wire  resetA ,
  input wire  resetB ,
  input wire  resetC ,
  input wire  clockA ,
  input wire  clockB ,
  input wire  clockC ,
  input wire  activateA ,
  input wire  activateB ,
  input wire  activateC ,
  input wire [3:0] rmlbA ,
  input wire [3:0] rmlbB ,
  input wire [3:0] rmlbC ,
  output wire  setzeroA ,
  output wire  setzeroB ,
  output wire  setzeroC ,
  output wire  directshiftA ,
  output wire  directshiftB ,
  output wire  directshiftC 
);
wor workingTmrErrorC;
wire workingVotedC;
wor directshift_iTmrErrorC;
wire directshift_iVotedC;
wor countTmrErrorC;
wire [7:0] countVotedC;
wor workingTmrErrorB;
wire workingVotedB;
wor directshift_iTmrErrorB;
wire directshift_iVotedB;
wor countTmrErrorB;
wire [7:0] countVotedB;
wor workingTmrErrorA;
wire workingVotedA;
wor directshift_iTmrErrorA;
wire directshift_iVotedA;
wor countTmrErrorA;
wire [7:0] countVotedA;
wire reset_iA;
wire reset_iB;
wire reset_iC;
assign reset_iA =  resetA;
assign reset_iB =  resetB;
assign reset_iC =  resetC;
reg  directshift_iA ;
reg  directshift_iB ;
reg  directshift_iC ;
reg  workingA ;
reg  workingB ;
reg  workingC ;
reg  [7:0] countA ;
reg  [7:0] countB ;
reg  [7:0] countC ;
reg  [3:0] upper4countA ;
reg  [3:0] lower4countA ;
reg  [3:0] upper4countB ;
reg  [3:0] lower4countB ;
reg  [3:0] upper4countC ;
reg  [3:0] lower4countC ;
reg  [3:0] rmlb_usA ;
reg  [3:0] rmlb_usB ;
reg  [3:0] rmlb_usC ;
reg  [7:0] count_usA ;
reg  [7:0] count_usB ;
reg  [7:0] count_usC ;
assign directshiftA =  directshift_iVotedA;
assign directshiftB =  directshift_iVotedB;
assign directshiftC =  directshift_iVotedC;
assign setzeroA =  ~workingVotedA;
assign setzeroB =  ~workingVotedB;
assign setzeroC =  ~workingVotedC;

always @( posedge clockA )
  begin
    directshift_iA <= directshift_iVotedA;
    workingA <= workingVotedA;
    countA <= countVotedA;
    if (reset_iA==1'b0)
      begin
        workingA <= 1'b0;
        countA <= 8'd128;
        directshift_iA <= 1'b0;
      end
    else
      if (activateA==1'b1)
        begin
          workingA <= 1'b1;
        end
      else
        if (workingVotedA==1'b1)
          begin
            if (!((rmlb_usA==upper4countA)&&(lower4countA==4'd0)))
              begin
                directshift_iA <= ~directshift_iVotedA;
                countA <= countVotedA-1;
              end
            else
              workingA <= 1'b0;
          end
  end

always @( posedge clockB )
  begin
    directshift_iB <= directshift_iVotedB;
    workingB <= workingVotedB;
    countB <= countVotedB;
    if (reset_iB==1'b0)
      begin
        workingB <= 1'b0;
        countB <= 8'd128;
        directshift_iB <= 1'b0;
      end
    else
      if (activateB==1'b1)
        begin
          workingB <= 1'b1;
        end
      else
        if (workingVotedB==1'b1)
          begin
            if (!((rmlb_usB==upper4countB)&&(lower4countB==4'd0)))
              begin
                directshift_iB <= ~directshift_iVotedB;
                countB <= countVotedB-1;
              end
            else
              workingB <= 1'b0;
          end
  end

always @( posedge clockC )
  begin
    directshift_iC <= directshift_iVotedC;
    workingC <= workingVotedC;
    countC <= countVotedC;
    if (reset_iC==1'b0)
      begin
        workingC <= 1'b0;
        countC <= 8'd128;
        directshift_iC <= 1'b0;
      end
    else
      if (activateC==1'b1)
        begin
          workingC <= 1'b1;
        end
      else
        if (workingVotedC==1'b1)
          begin
            if (!((rmlb_usC==upper4countC)&&(lower4countC==4'd0)))
              begin
                directshift_iC <= ~directshift_iVotedC;
                countC <= countVotedC-1;
              end
            else
              workingC <= 1'b0;
          end
  end

always @( countVotedA or rmlbA )
  begin
    count_usA =  countVotedA;
    upper4countA =  count_usA[7:4] ;
    lower4countA =  count_usA[3:0] ;
    rmlb_usA =  rmlbA;
  end

always @( countVotedB or rmlbB )
  begin
    count_usB =  countVotedB;
    upper4countB =  count_usB[7:4] ;
    lower4countB =  count_usB[3:0] ;
    rmlb_usB =  rmlbB;
  end

always @( countVotedC or rmlbC )
  begin
    count_usC =  countVotedC;
    upper4countC =  count_usC[7:4] ;
    lower4countC =  count_usC[3:0] ;
    rmlb_usC =  rmlbC;
  end

majorityVoter #(.WIDTH(8)) countVoterA (
    .inA(countA),
    .inB(countB),
    .inC(countC),
    .out(countVotedA),
    .tmrErr(countTmrErrorA)
    );

majorityVoter directshift_iVoterA (
    .inA(directshift_iA),
    .inB(directshift_iB),
    .inC(directshift_iC),
    .out(directshift_iVotedA),
    .tmrErr(directshift_iTmrErrorA)
    );

majorityVoter workingVoterA (
    .inA(workingA),
    .inB(workingB),
    .inC(workingC),
    .out(workingVotedA),
    .tmrErr(workingTmrErrorA)
    );

majorityVoter #(.WIDTH(8)) countVoterB (
    .inA(countA),
    .inB(countB),
    .inC(countC),
    .out(countVotedB),
    .tmrErr(countTmrErrorB)
    );

majorityVoter directshift_iVoterB (
    .inA(directshift_iA),
    .inB(directshift_iB),
    .inC(directshift_iC),
    .out(directshift_iVotedB),
    .tmrErr(directshift_iTmrErrorB)
    );

majorityVoter workingVoterB (
    .inA(workingA),
    .inB(workingB),
    .inC(workingC),
    .out(workingVotedB),
    .tmrErr(workingTmrErrorB)
    );

majorityVoter #(.WIDTH(8)) countVoterC (
    .inA(countA),
    .inB(countB),
    .inC(countC),
    .out(countVotedC),
    .tmrErr(countTmrErrorC)
    );

majorityVoter directshift_iVoterC (
    .inA(directshift_iA),
    .inB(directshift_iB),
    .inC(directshift_iC),
    .out(directshift_iVotedC),
    .tmrErr(directshift_iTmrErrorC)
    );

majorityVoter workingVoterC (
    .inA(workingA),
    .inB(workingB),
    .inC(workingC),
    .out(workingVotedC),
    .tmrErr(workingTmrErrorC)
    );
endmodule

