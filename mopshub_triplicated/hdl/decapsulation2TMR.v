/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/decapsulation2TMR.v                                                           *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:33                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: decapsulation2.v                                                                       *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 1909                                                               *
 *           MD5 hash          : f0c6438f1d978fca5c781c02b08c1de8                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module decapsulation2TMR(
  input wire [17:0] message_bA ,
  input wire [17:0] message_bB ,
  input wire [17:0] message_bC ,
  input wire [10:0] message_cA ,
  input wire [10:0] message_cB ,
  input wire [10:0] message_cC ,
  input wire  extendedA ,
  input wire  extendedB ,
  input wire  extendedC ,
  output reg [28:0] identifierA ,
  output reg [28:0] identifierB ,
  output reg [28:0] identifierC 
);

always @( message_bA or message_cA or extendedA )
  begin
    if (extendedA==1'b0)
      begin
        identifierA[28:18]  =  message_bA[10:0] ;
        identifierA[17:0]  =  18'd0;
      end
    else
      begin
        identifierA[28:18]  =  message_cA;
        identifierA[17:0]  =  message_bA;
      end
  end

always @( message_bB or message_cB or extendedB )
  begin
    if (extendedB==1'b0)
      begin
        identifierB[28:18]  =  message_bB[10:0] ;
        identifierB[17:0]  =  18'd0;
      end
    else
      begin
        identifierB[28:18]  =  message_cB;
        identifierB[17:0]  =  message_bB;
      end
  end

always @( message_bC or message_cC or extendedC )
  begin
    if (extendedC==1'b0)
      begin
        identifierC[28:18]  =  message_bC[10:0] ;
        identifierC[17:0]  =  18'd0;
      end
    else
      begin
        identifierC[28:18]  =  message_cC;
        identifierC[17:0]  =  message_bC;
      end
  end
endmodule
