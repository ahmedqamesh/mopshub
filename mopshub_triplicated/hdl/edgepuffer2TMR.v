/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/edgepuffer2TMR.v                                                              *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:33                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: edgepuffer2.v                                                                          *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 1957                                                               *
 *           MD5 hash          : a740e2e41facdc25cb2be90a0db1a688                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module edgepuffer2TMR(
  input wire  clockA ,
  input wire  clockB ,
  input wire  clockC ,
  input wire  Prescale_ENA ,
  input wire  Prescale_ENB ,
  input wire  Prescale_ENC ,
  input wire  resetA ,
  input wire  resetB ,
  input wire  resetC ,
  input wire  rxA ,
  input wire  rxB ,
  input wire  rxC ,
  output wire  pufferA ,
  output wire  pufferB ,
  output wire  pufferC 
);
wor buffTmrErrorC;
wire buffVotedC;
wor buffTmrErrorB;
wire buffVotedB;
wor buffTmrErrorA;
wire buffVotedA;
reg  buffA ;
reg  buffB ;
reg  buffC ;
assign pufferA =  buffVotedA;
assign pufferB =  buffVotedB;
assign pufferC =  buffVotedC;

always @( posedge clockA or negedge resetA )
  begin
    if (resetA==1'b0)
      begin
        buffA <= 1'b0;
      end
    else
      begin
        buffA <= buffVotedA;
        if (Prescale_ENA==1'b1)
          begin
            buffA <= rxA;
          end
      end
  end

always @( posedge clockB or negedge resetB )
  begin
    if (resetB==1'b0)
      begin
        buffB <= 1'b0;
      end
    else
      begin
        buffB <= buffVotedB;
        if (Prescale_ENB==1'b1)
          begin
            buffB <= rxB;
          end
      end
  end

always @( posedge clockC or negedge resetC )
  begin
    if (resetC==1'b0)
      begin
        buffC <= 1'b0;
      end
    else
      begin
        buffC <= buffVotedC;
        if (Prescale_ENC==1'b1)
          begin
            buffC <= rxC;
          end
      end
  end

majorityVoter buffVoterA (
    .inA(buffA),
    .inB(buffB),
    .inC(buffC),
    .out(buffVotedA),
    .tmrErr(buffTmrErrorA)
    );

majorityVoter buffVoterB (
    .inA(buffA),
    .inB(buffB),
    .inC(buffC),
    .out(buffVotedB),
    .tmrErr(buffTmrErrorB)
    );

majorityVoter buffVoterC (
    .inA(buffA),
    .inB(buffB),
    .inC(buffC),
    .out(buffVotedC),
    .tmrErr(buffTmrErrorC)
    );
endmodule

