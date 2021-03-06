/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/demux1_NbitTMR.v                                                              *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:33                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: demux1_Nbit.v                                                                          *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 20:07:05                                                *
 *           File Size         : 8408                                                               *
 *           MD5 hash          : 84d5d175a7f47735bd53d5590f4ed099                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module demux1_NbitTMR(
  input wire [4:0] selA ,
  input wire [4:0] selB ,
  input wire [4:0] selC ,
  input wire [15:0] input_busA ,
  input wire [15:0] input_busB ,
  input wire [15:0] input_busC ,
  output wire [15:0] output9A ,
  output wire [15:0] output9B ,
  output wire [15:0] output9C ,
  output wire [15:0] output18A ,
  output wire [15:0] output18B ,
  output wire [15:0] output18C ,
  output wire [15:0] output19A ,
  output wire [15:0] output19B ,
  output wire [15:0] output19C ,
  output wire [15:0] output20A ,
  output wire [15:0] output20B ,
  output wire [15:0] output20C ,
  output wire [15:0] output21A ,
  output wire [15:0] output21B ,
  output wire [15:0] output21C ,
  output wire [15:0] output22A ,
  output wire [15:0] output22B ,
  output wire [15:0] output22C ,
  output wire [15:0] output23A ,
  output wire [15:0] output23B ,
  output wire [15:0] output23C ,
  output wire [15:0] output24A ,
  output wire [15:0] output24B ,
  output wire [15:0] output24C ,
  output wire [15:0] output4A ,
  output wire [15:0] output4B ,
  output wire [15:0] output4C ,
  output wire [15:0] output5A ,
  output wire [15:0] output5B ,
  output wire [15:0] output5C ,
  output wire [15:0] output6A ,
  output wire [15:0] output6B ,
  output wire [15:0] output6C ,
  output wire [15:0] output7A ,
  output wire [15:0] output7B ,
  output wire [15:0] output7C ,
  output wire [15:0] output8A ,
  output wire [15:0] output8B ,
  output wire [15:0] output8C ,
  output wire [15:0] output10A ,
  output wire [15:0] output10B ,
  output wire [15:0] output10C ,
  output wire [15:0] output11A ,
  output wire [15:0] output11B ,
  output wire [15:0] output11C ,
  output wire [15:0] output12A ,
  output wire [15:0] output12B ,
  output wire [15:0] output12C ,
  output wire [15:0] output13A ,
  output wire [15:0] output13B ,
  output wire [15:0] output13C ,
  output wire [15:0] output14A ,
  output wire [15:0] output14B ,
  output wire [15:0] output14C ,
  output wire [15:0] output15A ,
  output wire [15:0] output15B ,
  output wire [15:0] output15C ,
  output wire [15:0] output16A ,
  output wire [15:0] output16B ,
  output wire [15:0] output16C ,
  output wire [15:0] output17A ,
  output wire [15:0] output17B ,
  output wire [15:0] output17C ,
  output wire [15:0] output0A ,
  output wire [15:0] output0B ,
  output wire [15:0] output0C ,
  output wire [15:0] output1A ,
  output wire [15:0] output1B ,
  output wire [15:0] output1C ,
  output wire [15:0] output2A ,
  output wire [15:0] output2B ,
  output wire [15:0] output2C ,
  output wire [15:0] output3A ,
  output wire [15:0] output3B ,
  output wire [15:0] output3C ,
  output wire [15:0] output26A ,
  output wire [15:0] output26B ,
  output wire [15:0] output26C ,
  output wire [15:0] output27A ,
  output wire [15:0] output27B ,
  output wire [15:0] output27C ,
  output wire [15:0] output28A ,
  output wire [15:0] output28B ,
  output wire [15:0] output28C ,
  output wire [15:0] output29A ,
  output wire [15:0] output29B ,
  output wire [15:0] output29C ,
  output wire [15:0] output30A ,
  output wire [15:0] output30B ,
  output wire [15:0] output30C ,
  output wire [15:0] output31A ,
  output wire [15:0] output31B ,
  output wire [15:0] output31C ,
  output wire [15:0] output25A ,
  output wire [15:0] output25B ,
  output wire [15:0] output25C 
);
reg  [15:0] def_valueA ;
reg  [15:0] def_valueB ;
reg  [15:0] def_valueC ;
reg  [15:0] output9_regA ;
reg  [15:0] output9_regB ;
reg  [15:0] output9_regC ;
reg  [15:0] output18_regA ;
reg  [15:0] output18_regB ;
reg  [15:0] output18_regC ;
reg  [15:0] output19_regA ;
reg  [15:0] output19_regB ;
reg  [15:0] output19_regC ;
reg  [15:0] output20_regA ;
reg  [15:0] output20_regB ;
reg  [15:0] output20_regC ;
reg  [15:0] output21_regA ;
reg  [15:0] output21_regB ;
reg  [15:0] output21_regC ;
reg  [15:0] output22_regA ;
reg  [15:0] output22_regB ;
reg  [15:0] output22_regC ;
reg  [15:0] output23_regA ;
reg  [15:0] output23_regB ;
reg  [15:0] output23_regC ;
reg  [15:0] output24_regA ;
reg  [15:0] output24_regB ;
reg  [15:0] output24_regC ;
reg  [15:0] output4_regA ;
reg  [15:0] output4_regB ;
reg  [15:0] output4_regC ;
reg  [15:0] output5_regA ;
reg  [15:0] output5_regB ;
reg  [15:0] output5_regC ;
reg  [15:0] output6_regA ;
reg  [15:0] output6_regB ;
reg  [15:0] output6_regC ;
reg  [15:0] output7_regA ;
reg  [15:0] output7_regB ;
reg  [15:0] output7_regC ;
reg  [15:0] output8_regA ;
reg  [15:0] output8_regB ;
reg  [15:0] output8_regC ;
reg  [15:0] output10_regA ;
reg  [15:0] output10_regB ;
reg  [15:0] output10_regC ;
reg  [15:0] output11_regA ;
reg  [15:0] output11_regB ;
reg  [15:0] output11_regC ;
reg  [15:0] output12_regA ;
reg  [15:0] output12_regB ;
reg  [15:0] output12_regC ;
reg  [15:0] output13_regA ;
reg  [15:0] output13_regB ;
reg  [15:0] output13_regC ;
reg  [15:0] output14_regA ;
reg  [15:0] output14_regB ;
reg  [15:0] output14_regC ;
reg  [15:0] output15_regA ;
reg  [15:0] output15_regB ;
reg  [15:0] output15_regC ;
reg  [15:0] output16_regA ;
reg  [15:0] output16_regB ;
reg  [15:0] output16_regC ;
reg  [15:0] output17_regA ;
reg  [15:0] output17_regB ;
reg  [15:0] output17_regC ;
reg  [15:0] output0_regA ;
reg  [15:0] output0_regB ;
reg  [15:0] output0_regC ;
reg  [15:0] output1_regA ;
reg  [15:0] output1_regB ;
reg  [15:0] output1_regC ;
reg  [15:0] output2_regA ;
reg  [15:0] output2_regB ;
reg  [15:0] output2_regC ;
reg  [15:0] output3_regA ;
reg  [15:0] output3_regB ;
reg  [15:0] output3_regC ;
reg  [15:0] output26_regA ;
reg  [15:0] output26_regB ;
reg  [15:0] output26_regC ;
reg  [15:0] output27_regA ;
reg  [15:0] output27_regB ;
reg  [15:0] output27_regC ;
reg  [15:0] output28_regA ;
reg  [15:0] output28_regB ;
reg  [15:0] output28_regC ;
reg  [15:0] output29_regA ;
reg  [15:0] output29_regB ;
reg  [15:0] output29_regC ;
reg  [15:0] output30_regA ;
reg  [15:0] output30_regB ;
reg  [15:0] output30_regC ;
reg  [15:0] output31_regA ;
reg  [15:0] output31_regB ;
reg  [15:0] output31_regC ;
reg  [15:0] output25_regA ;
reg  [15:0] output25_regB ;
reg  [15:0] output25_regC ;
initial
  begin
    def_valueA =  16'b0;
    output9_regA =  16'b0;
    output18_regA =  16'b0;
    output19_regA =  16'b0;
    output20_regA =  16'b0;
    output21_regA =  16'b0;
    output22_regA =  16'b0;
    output23_regA =  16'b0;
    output24_regA =  16'b0;
    output4_regA =  16'b0;
    output5_regA =  16'b0;
    output6_regA =  16'b0;
    output7_regA =  16'b0;
    output8_regA =  16'b0;
    output10_regA =  16'b0;
    output11_regA =  16'b0;
    output12_regA =  16'b0;
    output13_regA =  16'b0;
    output14_regA =  16'b0;
    output15_regA =  16'b0;
    output16_regA =  16'b0;
    output17_regA =  16'b0;
    output0_regA =  16'b0;
    output1_regA =  16'b0;
    output2_regA =  16'b0;
    output3_regA =  16'b0;
    output26_regA =  16'b0;
    output27_regA =  16'b0;
    output28_regA =  16'b0;
    output29_regA =  16'b0;
    output30_regA =  16'b0;
    output31_regA =  16'b0;
    output25_regA =  16'b0;
  end
initial
  begin
    def_valueB =  16'b0;
    output9_regB =  16'b0;
    output18_regB =  16'b0;
    output19_regB =  16'b0;
    output20_regB =  16'b0;
    output21_regB =  16'b0;
    output22_regB =  16'b0;
    output23_regB =  16'b0;
    output24_regB =  16'b0;
    output4_regB =  16'b0;
    output5_regB =  16'b0;
    output6_regB =  16'b0;
    output7_regB =  16'b0;
    output8_regB =  16'b0;
    output10_regB =  16'b0;
    output11_regB =  16'b0;
    output12_regB =  16'b0;
    output13_regB =  16'b0;
    output14_regB =  16'b0;
    output15_regB =  16'b0;
    output16_regB =  16'b0;
    output17_regB =  16'b0;
    output0_regB =  16'b0;
    output1_regB =  16'b0;
    output2_regB =  16'b0;
    output3_regB =  16'b0;
    output26_regB =  16'b0;
    output27_regB =  16'b0;
    output28_regB =  16'b0;
    output29_regB =  16'b0;
    output30_regB =  16'b0;
    output31_regB =  16'b0;
    output25_regB =  16'b0;
  end
initial
  begin
    def_valueC =  16'b0;
    output9_regC =  16'b0;
    output18_regC =  16'b0;
    output19_regC =  16'b0;
    output20_regC =  16'b0;
    output21_regC =  16'b0;
    output22_regC =  16'b0;
    output23_regC =  16'b0;
    output24_regC =  16'b0;
    output4_regC =  16'b0;
    output5_regC =  16'b0;
    output6_regC =  16'b0;
    output7_regC =  16'b0;
    output8_regC =  16'b0;
    output10_regC =  16'b0;
    output11_regC =  16'b0;
    output12_regC =  16'b0;
    output13_regC =  16'b0;
    output14_regC =  16'b0;
    output15_regC =  16'b0;
    output16_regC =  16'b0;
    output17_regC =  16'b0;
    output0_regC =  16'b0;
    output1_regC =  16'b0;
    output2_regC =  16'b0;
    output3_regC =  16'b0;
    output26_regC =  16'b0;
    output27_regC =  16'b0;
    output28_regC =  16'b0;
    output29_regC =  16'b0;
    output30_regC =  16'b0;
    output31_regC =  16'b0;
    output25_regC =  16'b0;
  end
assign output9A =  output9_regA;
assign output9B =  output9_regB;
assign output9C =  output9_regC;
assign output18A =  output18_regA;
assign output18B =  output18_regB;
assign output18C =  output18_regC;
assign output19A =  output19_regA;
assign output19B =  output19_regB;
assign output19C =  output19_regC;
assign output20A =  output20_regA;
assign output20B =  output20_regB;
assign output20C =  output20_regC;
assign output21A =  output21_regA;
assign output21B =  output21_regB;
assign output21C =  output21_regC;
assign output22A =  output22_regA;
assign output22B =  output22_regB;
assign output22C =  output22_regC;
assign output23A =  output23_regA;
assign output23B =  output23_regB;
assign output23C =  output23_regC;
assign output24A =  output24_regA;
assign output24B =  output24_regB;
assign output24C =  output24_regC;
assign output4A =  output4_regA;
assign output4B =  output4_regB;
assign output4C =  output4_regC;
assign output5A =  output5_regA;
assign output5B =  output5_regB;
assign output5C =  output5_regC;
assign output6A =  output6_regA;
assign output6B =  output6_regB;
assign output6C =  output6_regC;
assign output7A =  output7_regA;
assign output7B =  output7_regB;
assign output7C =  output7_regC;
assign output8A =  output8_regA;
assign output8B =  output8_regB;
assign output8C =  output8_regC;
assign output10A =  output10_regA;
assign output10B =  output10_regB;
assign output10C =  output10_regC;
assign output11A =  output11_regA;
assign output11B =  output11_regB;
assign output11C =  output11_regC;
assign output12A =  output12_regA;
assign output12B =  output12_regB;
assign output12C =  output12_regC;
assign output13A =  output13_regA;
assign output13B =  output13_regB;
assign output13C =  output13_regC;
assign output14A =  output14_regA;
assign output14B =  output14_regB;
assign output14C =  output14_regC;
assign output15A =  output15_regA;
assign output15B =  output15_regB;
assign output15C =  output15_regC;
assign output16A =  output16_regA;
assign output16B =  output16_regB;
assign output16C =  output16_regC;
assign output17A =  output17_regA;
assign output17B =  output17_regB;
assign output17C =  output17_regC;
assign output0A =  output0_regA;
assign output0B =  output0_regB;
assign output0C =  output0_regC;
assign output1A =  output1_regA;
assign output1B =  output1_regB;
assign output1C =  output1_regC;
assign output2A =  output2_regA;
assign output2B =  output2_regB;
assign output2C =  output2_regC;
assign output3A =  output3_regA;
assign output3B =  output3_regB;
assign output3C =  output3_regC;
assign output26A =  output26_regA;
assign output26B =  output26_regB;
assign output26C =  output26_regC;
assign output27A =  output27_regA;
assign output27B =  output27_regB;
assign output27C =  output27_regC;
assign output28A =  output28_regA;
assign output28B =  output28_regB;
assign output28C =  output28_regC;
assign output29A =  output29_regA;
assign output29B =  output29_regB;
assign output29C =  output29_regC;
assign output30A =  output30_regA;
assign output30B =  output30_regB;
assign output30C =  output30_regC;
assign output31A =  output31_regA;
assign output31B =  output31_regB;
assign output31C =  output31_regC;
assign output25A =  output25_regA;
assign output25B =  output25_regB;
assign output25C =  output25_regC;

always @( * )
  begin
    output9_regA =  def_valueA;
    output18_regA =  def_valueA;
    output19_regA =  def_valueA;
    output20_regA =  def_valueA;
    output21_regA =  def_valueA;
    output22_regA =  def_valueA;
    output23_regA =  def_valueA;
    output24_regA =  def_valueA;
    output4_regA =  def_valueA;
    output5_regA =  def_valueA;
    output6_regA =  def_valueA;
    output7_regA =  def_valueA;
    output8_regA =  def_valueA;
    output10_regA =  def_valueA;
    output11_regA =  def_valueA;
    output12_regA =  def_valueA;
    output13_regA =  def_valueA;
    output14_regA =  def_valueA;
    output15_regA =  def_valueA;
    output16_regA =  def_valueA;
    output17_regA =  def_valueA;
    output0_regA =  def_valueA;
    output1_regA =  def_valueA;
    output2_regA =  def_valueA;
    output3_regA =  def_valueA;
    output26_regA =  def_valueA;
    output27_regA =  def_valueA;
    output28_regA =  def_valueA;
    output29_regA =  def_valueA;
    output30_regA =  def_valueA;
    output31_regA =  def_valueA;
    output25_regA =  def_valueA;
    case (selA)
      5'h0 : output0_regA =  input_busA;
      5'h1 : output1_regA =  input_busA;
      5'h2 : output2_regA =  input_busA;
      5'h3 : output3_regA =  input_busA;
      5'h4 : output4_regA =  input_busA;
      5'h5 : output5_regA =  input_busA;
      5'h6 : output6_regA =  input_busA;
      5'h7 : output7_regA =  input_busA;
      5'h8 : output8_regA =  input_busA;
      5'h9 : output9_regA =  input_busA;
      5'hA : output10_regA =  input_busA;
      5'hB : output11_regA =  input_busA;
      5'hC : output12_regA =  input_busA;
      5'hD : output13_regA =  input_busA;
      5'hE : output14_regA =  input_busA;
      5'hF : output15_regA =  input_busA;
      5'h10 : output16_regA =  input_busA;
      5'h11 : output17_regA =  input_busA;
      5'h12 : output18_regA =  input_busA;
      5'h13 : output19_regA =  input_busA;
      5'h14 : output20_regA =  input_busA;
      5'h15 : output21_regA =  input_busA;
      5'h16 : output22_regA =  input_busA;
      5'h17 : output23_regA =  input_busA;
      5'h18 : output24_regA =  input_busA;
      5'h19 : output25_regA =  input_busA;
      5'h1A : output26_regA =  input_busA;
      5'h1B : output27_regA =  input_busA;
      5'h1C : output28_regA =  input_busA;
      5'h1D : output29_regA =  input_busA;
      5'h1E : output30_regA =  input_busA;
      5'h1F : output31_regA =  input_busA;
      default : 
        begin
          output9_regA =  def_valueA;
          output18_regA =  def_valueA;
          output19_regA =  def_valueA;
          output20_regA =  def_valueA;
          output21_regA =  def_valueA;
          output22_regA =  def_valueA;
          output23_regA =  def_valueA;
          output24_regA =  def_valueA;
          output4_regA =  def_valueA;
          output5_regA =  def_valueA;
          output6_regA =  def_valueA;
          output7_regA =  def_valueA;
          output8_regA =  def_valueA;
          output10_regA =  def_valueA;
          output11_regA =  def_valueA;
          output12_regA =  def_valueA;
          output13_regA =  def_valueA;
          output14_regA =  def_valueA;
          output15_regA =  def_valueA;
          output16_regA =  def_valueA;
          output17_regA =  def_valueA;
          output0_regA =  def_valueA;
          output1_regA =  def_valueA;
          output2_regA =  def_valueA;
          output3_regA =  def_valueA;
          output26_regA =  def_valueA;
          output27_regA =  def_valueA;
          output28_regA =  def_valueA;
          output29_regA =  def_valueA;
          output30_regA =  def_valueA;
          output31_regA =  def_valueA;
          output25_regA =  def_valueA;
        end
    endcase
  end

always @( * )
  begin
    output9_regB =  def_valueB;
    output18_regB =  def_valueB;
    output19_regB =  def_valueB;
    output20_regB =  def_valueB;
    output21_regB =  def_valueB;
    output22_regB =  def_valueB;
    output23_regB =  def_valueB;
    output24_regB =  def_valueB;
    output4_regB =  def_valueB;
    output5_regB =  def_valueB;
    output6_regB =  def_valueB;
    output7_regB =  def_valueB;
    output8_regB =  def_valueB;
    output10_regB =  def_valueB;
    output11_regB =  def_valueB;
    output12_regB =  def_valueB;
    output13_regB =  def_valueB;
    output14_regB =  def_valueB;
    output15_regB =  def_valueB;
    output16_regB =  def_valueB;
    output17_regB =  def_valueB;
    output0_regB =  def_valueB;
    output1_regB =  def_valueB;
    output2_regB =  def_valueB;
    output3_regB =  def_valueB;
    output26_regB =  def_valueB;
    output27_regB =  def_valueB;
    output28_regB =  def_valueB;
    output29_regB =  def_valueB;
    output30_regB =  def_valueB;
    output31_regB =  def_valueB;
    output25_regB =  def_valueB;
    case (selB)
      5'h0 : output0_regB =  input_busB;
      5'h1 : output1_regB =  input_busB;
      5'h2 : output2_regB =  input_busB;
      5'h3 : output3_regB =  input_busB;
      5'h4 : output4_regB =  input_busB;
      5'h5 : output5_regB =  input_busB;
      5'h6 : output6_regB =  input_busB;
      5'h7 : output7_regB =  input_busB;
      5'h8 : output8_regB =  input_busB;
      5'h9 : output9_regB =  input_busB;
      5'hA : output10_regB =  input_busB;
      5'hB : output11_regB =  input_busB;
      5'hC : output12_regB =  input_busB;
      5'hD : output13_regB =  input_busB;
      5'hE : output14_regB =  input_busB;
      5'hF : output15_regB =  input_busB;
      5'h10 : output16_regB =  input_busB;
      5'h11 : output17_regB =  input_busB;
      5'h12 : output18_regB =  input_busB;
      5'h13 : output19_regB =  input_busB;
      5'h14 : output20_regB =  input_busB;
      5'h15 : output21_regB =  input_busB;
      5'h16 : output22_regB =  input_busB;
      5'h17 : output23_regB =  input_busB;
      5'h18 : output24_regB =  input_busB;
      5'h19 : output25_regB =  input_busB;
      5'h1A : output26_regB =  input_busB;
      5'h1B : output27_regB =  input_busB;
      5'h1C : output28_regB =  input_busB;
      5'h1D : output29_regB =  input_busB;
      5'h1E : output30_regB =  input_busB;
      5'h1F : output31_regB =  input_busB;
      default : 
        begin
          output9_regB =  def_valueB;
          output18_regB =  def_valueB;
          output19_regB =  def_valueB;
          output20_regB =  def_valueB;
          output21_regB =  def_valueB;
          output22_regB =  def_valueB;
          output23_regB =  def_valueB;
          output24_regB =  def_valueB;
          output4_regB =  def_valueB;
          output5_regB =  def_valueB;
          output6_regB =  def_valueB;
          output7_regB =  def_valueB;
          output8_regB =  def_valueB;
          output10_regB =  def_valueB;
          output11_regB =  def_valueB;
          output12_regB =  def_valueB;
          output13_regB =  def_valueB;
          output14_regB =  def_valueB;
          output15_regB =  def_valueB;
          output16_regB =  def_valueB;
          output17_regB =  def_valueB;
          output0_regB =  def_valueB;
          output1_regB =  def_valueB;
          output2_regB =  def_valueB;
          output3_regB =  def_valueB;
          output26_regB =  def_valueB;
          output27_regB =  def_valueB;
          output28_regB =  def_valueB;
          output29_regB =  def_valueB;
          output30_regB =  def_valueB;
          output31_regB =  def_valueB;
          output25_regB =  def_valueB;
        end
    endcase
  end

always @( * )
  begin
    output9_regC =  def_valueC;
    output18_regC =  def_valueC;
    output19_regC =  def_valueC;
    output20_regC =  def_valueC;
    output21_regC =  def_valueC;
    output22_regC =  def_valueC;
    output23_regC =  def_valueC;
    output24_regC =  def_valueC;
    output4_regC =  def_valueC;
    output5_regC =  def_valueC;
    output6_regC =  def_valueC;
    output7_regC =  def_valueC;
    output8_regC =  def_valueC;
    output10_regC =  def_valueC;
    output11_regC =  def_valueC;
    output12_regC =  def_valueC;
    output13_regC =  def_valueC;
    output14_regC =  def_valueC;
    output15_regC =  def_valueC;
    output16_regC =  def_valueC;
    output17_regC =  def_valueC;
    output0_regC =  def_valueC;
    output1_regC =  def_valueC;
    output2_regC =  def_valueC;
    output3_regC =  def_valueC;
    output26_regC =  def_valueC;
    output27_regC =  def_valueC;
    output28_regC =  def_valueC;
    output29_regC =  def_valueC;
    output30_regC =  def_valueC;
    output31_regC =  def_valueC;
    output25_regC =  def_valueC;
    case (selC)
      5'h0 : output0_regC =  input_busC;
      5'h1 : output1_regC =  input_busC;
      5'h2 : output2_regC =  input_busC;
      5'h3 : output3_regC =  input_busC;
      5'h4 : output4_regC =  input_busC;
      5'h5 : output5_regC =  input_busC;
      5'h6 : output6_regC =  input_busC;
      5'h7 : output7_regC =  input_busC;
      5'h8 : output8_regC =  input_busC;
      5'h9 : output9_regC =  input_busC;
      5'hA : output10_regC =  input_busC;
      5'hB : output11_regC =  input_busC;
      5'hC : output12_regC =  input_busC;
      5'hD : output13_regC =  input_busC;
      5'hE : output14_regC =  input_busC;
      5'hF : output15_regC =  input_busC;
      5'h10 : output16_regC =  input_busC;
      5'h11 : output17_regC =  input_busC;
      5'h12 : output18_regC =  input_busC;
      5'h13 : output19_regC =  input_busC;
      5'h14 : output20_regC =  input_busC;
      5'h15 : output21_regC =  input_busC;
      5'h16 : output22_regC =  input_busC;
      5'h17 : output23_regC =  input_busC;
      5'h18 : output24_regC =  input_busC;
      5'h19 : output25_regC =  input_busC;
      5'h1A : output26_regC =  input_busC;
      5'h1B : output27_regC =  input_busC;
      5'h1C : output28_regC =  input_busC;
      5'h1D : output29_regC =  input_busC;
      5'h1E : output30_regC =  input_busC;
      5'h1F : output31_regC =  input_busC;
      default : 
        begin
          output9_regC =  def_valueC;
          output18_regC =  def_valueC;
          output19_regC =  def_valueC;
          output20_regC =  def_valueC;
          output21_regC =  def_valueC;
          output22_regC =  def_valueC;
          output23_regC =  def_valueC;
          output24_regC =  def_valueC;
          output4_regC =  def_valueC;
          output5_regC =  def_valueC;
          output6_regC =  def_valueC;
          output7_regC =  def_valueC;
          output8_regC =  def_valueC;
          output10_regC =  def_valueC;
          output11_regC =  def_valueC;
          output12_regC =  def_valueC;
          output13_regC =  def_valueC;
          output14_regC =  def_valueC;
          output15_regC =  def_valueC;
          output16_regC =  def_valueC;
          output17_regC =  def_valueC;
          output0_regC =  def_valueC;
          output1_regC =  def_valueC;
          output2_regC =  def_valueC;
          output3_regC =  def_valueC;
          output26_regC =  def_valueC;
          output27_regC =  def_valueC;
          output28_regC =  def_valueC;
          output29_regC =  def_valueC;
          output30_regC =  def_valueC;
          output31_regC =  def_valueC;
          output25_regC =  def_valueC;
        end
    endcase
  end
endmodule

