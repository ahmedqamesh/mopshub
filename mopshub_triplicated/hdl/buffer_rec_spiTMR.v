/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/buffer_rec_spiTMR.v                                                           *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:31                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: buffer_rec_spi.v                                                                       *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 18:32:03                                                *
 *           File Size         : 1866                                                               *
 *           MD5 hash          : 2bf3a4249abf2b57b54b2e17dc0d71d0                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module buffer_rec_spiTMR(
  input wire [31:0] data_rec_inA ,
  input wire [31:0] data_rec_inB ,
  input wire [31:0] data_rec_inC ,
  input wire [4:0] addrA ,
  input wire [4:0] addrB ,
  input wire [4:0] addrC ,
  output wire [7:0] data_rec_8bitoutA ,
  output wire [7:0] data_rec_8bitoutB ,
  output wire [7:0] data_rec_8bitoutC ,
  output wire [1:0] data_rec_delimiterA ,
  output wire [1:0] data_rec_delimiterB ,
  output wire [1:0] data_rec_delimiterC ,
  input wire [7:0] Kchar_sopA ,
  input wire [7:0] Kchar_sopB ,
  input wire [7:0] Kchar_sopC ,
  input wire [7:0] Kchar_eopA ,
  input wire [7:0] Kchar_eopB ,
  input wire [7:0] Kchar_eopC ,
  input wire [7:0] Kchar_commaA ,
  input wire [7:0] Kchar_commaB ,
  input wire [7:0] Kchar_commaC 
);
reg  [7:0] data_rec_regA ;
reg  [7:0] data_rec_regB ;
reg  [7:0] data_rec_regC ;
reg  [1:0] data_delimiter_regA ;
reg  [1:0] data_delimiter_regB ;
reg  [1:0] data_delimiter_regC ;
initial
  begin
    data_rec_regA =  8'b0;
    data_delimiter_regA =  2'b11;
  end
initial
  begin
    data_rec_regB =  8'b0;
    data_delimiter_regB =  2'b11;
  end
initial
  begin
    data_rec_regC =  8'b0;
    data_delimiter_regC =  2'b11;
  end

always @( * )
  case (addrA)
    5'b00000 : data_rec_regA =  Kchar_commaA;
    5'b00001 : data_rec_regA =  Kchar_sopA;
    5'b00010 : data_rec_regA =  data_rec_inA[31:24] ;
    5'b00011 : data_rec_regA =  data_rec_inA[23:16] ;
    5'b00100 : data_rec_regA =  data_rec_inA[15:8] ;
    5'b00101 : data_rec_regA =  data_rec_inA[7:0] ;
    5'b01100 : data_rec_regA =  Kchar_eopA;
    default : data_rec_regA =  Kchar_commaA;
  endcase

always @( * )
  case (addrB)
    5'b00000 : data_rec_regB =  Kchar_commaB;
    5'b00001 : data_rec_regB =  Kchar_sopB;
    5'b00010 : data_rec_regB =  data_rec_inB[31:24] ;
    5'b00011 : data_rec_regB =  data_rec_inB[23:16] ;
    5'b00100 : data_rec_regB =  data_rec_inB[15:8] ;
    5'b00101 : data_rec_regB =  data_rec_inB[7:0] ;
    5'b01100 : data_rec_regB =  Kchar_eopB;
    default : data_rec_regB =  Kchar_commaB;
  endcase

always @( * )
  case (addrC)
    5'b00000 : data_rec_regC =  Kchar_commaC;
    5'b00001 : data_rec_regC =  Kchar_sopC;
    5'b00010 : data_rec_regC =  data_rec_inC[31:24] ;
    5'b00011 : data_rec_regC =  data_rec_inC[23:16] ;
    5'b00100 : data_rec_regC =  data_rec_inC[15:8] ;
    5'b00101 : data_rec_regC =  data_rec_inC[7:0] ;
    5'b01100 : data_rec_regC =  Kchar_eopC;
    default : data_rec_regC =  Kchar_commaC;
  endcase

always @( * )
  case (addrA)
    5'b00000 : data_delimiter_regA =  2'b11;
    5'b00001 : data_delimiter_regA =  2'b10;
    5'b00010 : data_delimiter_regA =  2'b00;
    5'b00011 : data_delimiter_regA =  2'b00;
    5'b00100 : data_delimiter_regA =  2'b00;
    5'b00101 : data_delimiter_regA =  2'b00;
    5'b01100 : data_delimiter_regA =  2'b01;
    default : data_delimiter_regA =  2'b11;
  endcase

always @( * )
  case (addrB)
    5'b00000 : data_delimiter_regB =  2'b11;
    5'b00001 : data_delimiter_regB =  2'b10;
    5'b00010 : data_delimiter_regB =  2'b00;
    5'b00011 : data_delimiter_regB =  2'b00;
    5'b00100 : data_delimiter_regB =  2'b00;
    5'b00101 : data_delimiter_regB =  2'b00;
    5'b01100 : data_delimiter_regB =  2'b01;
    default : data_delimiter_regB =  2'b11;
  endcase

always @( * )
  case (addrC)
    5'b00000 : data_delimiter_regC =  2'b11;
    5'b00001 : data_delimiter_regC =  2'b10;
    5'b00010 : data_delimiter_regC =  2'b00;
    5'b00011 : data_delimiter_regC =  2'b00;
    5'b00100 : data_delimiter_regC =  2'b00;
    5'b00101 : data_delimiter_regC =  2'b00;
    5'b01100 : data_delimiter_regC =  2'b01;
    default : data_delimiter_regC =  2'b11;
  endcase
assign data_rec_8bitoutA =  data_rec_regA;
assign data_rec_8bitoutB =  data_rec_regB;
assign data_rec_8bitoutC =  data_rec_regC;
assign data_rec_delimiterA =  data_delimiter_regA;
assign data_rec_delimiterB =  data_delimiter_regB;
assign data_rec_delimiterC =  data_delimiter_regC;
endmodule
