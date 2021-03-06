/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/bit_counterTMR.v                                                              *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:30                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: bit_counter.v                                                                          *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 18:30:57                                                *
 *           File Size         : 776                                                                *
 *           MD5 hash          : ddda6e16eb4ba79dfff89131a9eb1739                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module bit_counterTMR(
  input wire  ext_rstA ,
  input wire  ext_rstB ,
  input wire  ext_rstC ,
  input wire  rstA ,
  input wire  rstB ,
  input wire  rstC ,
  output wire [4:0] data_outA ,
  output wire [4:0] data_outB ,
  output wire [4:0] data_outC ,
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  cnt_enableA ,
  input wire  cnt_enableB ,
  input wire  cnt_enableC 
);
reg  [4:0] data_out_regA ;
reg  [4:0] data_out_regB ;
reg  [4:0] data_out_regC ;
assign data_outA =  data_out_regA;
assign data_outB =  data_out_regB;
assign data_outC =  data_out_regC;

always @( posedge clkA )
  if (!rstA|ext_rstA)
    begin
      data_out_regA <= 5'b00000;
    end
  else
    if (cnt_enableA)
      begin
        data_out_regA <= data_out_regA+1;
      end

always @( posedge clkB )
  if (!rstB|ext_rstB)
    begin
      data_out_regB <= 5'b00000;
    end
  else
    if (cnt_enableB)
      begin
        data_out_regB <= data_out_regB+1;
      end

always @( posedge clkC )
  if (!rstC|ext_rstC)
    begin
      data_out_regC <= 5'b00000;
    end
  else
    if (cnt_enableC)
      begin
        data_out_regC <= data_out_regC+1;
      end
endmodule

