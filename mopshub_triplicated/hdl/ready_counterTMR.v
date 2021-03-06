/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/ready_counterTMR.v                                                            *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:55                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: ready_counter.v                                                                        *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 851                                                                *
 *           MD5 hash          : 5ee4de68396946a55e558246f326ad78                                   *
 *                                                                                                  *
 ****************************************************************************************************/

`resetall 
`timescale  1ns/10ps
module ready_counterTMR(
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  rstnA ,
  input wire  rstnB ,
  input wire  rstnC ,
  input wire  enableA ,
  input wire  enableB ,
  input wire  enableC ,
  input wire  en_osc_trimA ,
  input wire  en_osc_trimB ,
  input wire  en_osc_trimC ,
  output wire  readyA ,
  output wire  readyB ,
  output wire  readyC 
);
wor counterTmrErrorC;
wire [9:0] counterVotedC;
wor counterTmrErrorB;
wire [9:0] counterVotedB;
wor counterTmrErrorA;
wire [9:0] counterVotedA;
reg  [9:0] counterA ;
reg  [9:0] counterB ;
reg  [9:0] counterC ;

always @( posedge clkA or negedge rstnA )
  begin
    if (rstnA==0)
      counterA <= 10'd659;
    else
      if (en_osc_trimA&enableA)
        counterA <= counterA-1;
      else
        if (~en_osc_trimA)
          counterA <= 10'd659;
        else
          counterA <= counterVotedA;
  end

always @( posedge clkB or negedge rstnB )
  begin
    if (rstnB==0)
      counterB <= 10'd659;
    else
      if (en_osc_trimB&enableB)
        counterB <= counterB-1;
      else
        if (~en_osc_trimB)
          counterB <= 10'd659;
        else
          counterB <= counterVotedB;
  end

always @( posedge clkC or negedge rstnC )
  begin
    if (rstnC==0)
      counterC <= 10'd659;
    else
      if (en_osc_trimC&enableC)
        counterC <= counterC-1;
      else
        if (~en_osc_trimC)
          counterC <= 10'd659;
        else
          counterC <= counterVotedC;
  end
assign readyA =  (counterVotedA==10'd0) ? 1'b1 : 1'b0;
assign readyB =  (counterVotedB==10'd0) ? 1'b1 : 1'b0;
assign readyC =  (counterVotedC==10'd0) ? 1'b1 : 1'b0;

majorityVoter #(.WIDTH(10)) counterVoterA (
    .inA(counterA),
    .inB(counterB),
    .inC(counterC),
    .out(counterVotedA),
    .tmrErr(counterTmrErrorA)
    );

majorityVoter #(.WIDTH(10)) counterVoterB (
    .inA(counterA),
    .inB(counterB),
    .inC(counterC),
    .out(counterVotedB),
    .tmrErr(counterTmrErrorB)
    );

majorityVoter #(.WIDTH(10)) counterVoterC (
    .inA(counterA),
    .inB(counterB),
    .inC(counterC),
    .out(counterVotedC),
    .tmrErr(counterTmrErrorC)
    );
endmodule

