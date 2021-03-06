/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/recarbitreg2TMR.v                                                             *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:56                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: recarbitreg2.v                                                                         *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 1765                                                               *
 *           MD5 hash          : 92ecfca2c6d0b5026095caf12060eccf                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module recarbitreg2TMR(
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  rstA ,
  input wire  rstB ,
  input wire  rstC ,
  input wire  cpuA ,
  input wire  cpuB ,
  input wire  cpuC ,
  input wire  canA ,
  input wire  canB ,
  input wire  canC ,
  input wire [15:0] reginpA ,
  input wire [15:0] reginpB ,
  input wire [15:0] reginpC ,
  input wire [15:0] recidinA ,
  input wire [15:0] recidinB ,
  input wire [15:0] recidinC ,
  output wire [15:0] regoutA ,
  output wire [15:0] regoutB ,
  output wire [15:0] regoutC 
);
wor register_iTmrErrorC;
wire [15:0] register_iVotedC;
wor register_iTmrErrorB;
wire [15:0] register_iVotedB;
wor register_iTmrErrorA;
wire [15:0] register_iVotedA;
reg  [15:0] register_iA ;
reg  [15:0] register_iB ;
reg  [15:0] register_iC ;
assign regoutA =  register_iVotedA;
assign regoutB =  register_iVotedB;
assign regoutC =  register_iVotedC;

always @( posedge clkA )
  begin
    if (rstA==1'b0)
      register_iA <= 16'd0;
    else
      if (cpuA==1'b1)
        register_iA <= reginpA;
      else
        if (canA==1'b1)
          register_iA <= recidinA;
        else
          register_iA <= register_iVotedA;
  end

always @( posedge clkB )
  begin
    if (rstB==1'b0)
      register_iB <= 16'd0;
    else
      if (cpuB==1'b1)
        register_iB <= reginpB;
      else
        if (canB==1'b1)
          register_iB <= recidinB;
        else
          register_iB <= register_iVotedB;
  end

always @( posedge clkC )
  begin
    if (rstC==1'b0)
      register_iC <= 16'd0;
    else
      if (cpuC==1'b1)
        register_iC <= reginpC;
      else
        if (canC==1'b1)
          register_iC <= recidinC;
        else
          register_iC <= register_iVotedC;
  end

majorityVoter #(.WIDTH(16)) register_iVoterA (
    .inA(register_iA),
    .inB(register_iB),
    .inC(register_iC),
    .out(register_iVotedA),
    .tmrErr(register_iTmrErrorA)
    );

majorityVoter #(.WIDTH(16)) register_iVoterB (
    .inA(register_iA),
    .inB(register_iB),
    .inC(register_iC),
    .out(register_iVotedB),
    .tmrErr(register_iTmrErrorB)
    );

majorityVoter #(.WIDTH(16)) register_iVoterC (
    .inA(register_iA),
    .inB(register_iB),
    .inC(register_iC),
    .out(register_iVotedC),
    .tmrErr(register_iTmrErrorC)
    );
endmodule

