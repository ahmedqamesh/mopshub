/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/MultiTMR.v                                                                    *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:29                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: Multi.v                                                                                *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 363                                                                *
 *           MD5 hash          : 4a88b8938b192655ca0aa69516e258ef                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module MultiTMR #(
  parameter  WidthA  = 8,
  parameter  WidthB  = 8
)(
  input wire signed [WidthA-1:0] a_iA ,
  input wire signed [WidthA-1:0] a_iB ,
  input wire signed [WidthA-1:0] a_iC ,
  input wire signed [WidthB-1:0] b_iA ,
  input wire signed [WidthB-1:0] b_iB ,
  input wire signed [WidthB-1:0] b_iC ,
  output wire signed [WidthA+WidthB-1:0] prod_oA ,
  output wire signed [WidthA+WidthB-1:0] prod_oB ,
  output wire signed [WidthA+WidthB-1:0] prod_oC 
);
assign prod_oA =  a_iA*b_iA;
assign prod_oB =  a_iB*b_iB;
assign prod_oC =  a_iC*b_iC;
endmodule
