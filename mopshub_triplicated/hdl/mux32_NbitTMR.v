/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/mux32_NbitTMR.v                                                               *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:54                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: mux32_Nbit.v                                                                           *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 18:40:24                                                *
 *           File Size         : 2949                                                               *
 *           MD5 hash          : 8b728af563959f627ca5d563dda470b6                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module mux32_NbitTMR(
  input wire [15:0] data0A ,
  input wire [15:0] data0B ,
  input wire [15:0] data0C ,
  input wire [15:0] data1A ,
  input wire [15:0] data1B ,
  input wire [15:0] data1C ,
  input wire [15:0] data2A ,
  input wire [15:0] data2B ,
  input wire [15:0] data2C ,
  input wire [15:0] data3A ,
  input wire [15:0] data3B ,
  input wire [15:0] data3C ,
  input wire [15:0] data4A ,
  input wire [15:0] data4B ,
  input wire [15:0] data4C ,
  input wire [15:0] data5A ,
  input wire [15:0] data5B ,
  input wire [15:0] data5C ,
  input wire [15:0] data6A ,
  input wire [15:0] data6B ,
  input wire [15:0] data6C ,
  input wire [15:0] data7A ,
  input wire [15:0] data7B ,
  input wire [15:0] data7C ,
  input wire [15:0] data8A ,
  input wire [15:0] data8B ,
  input wire [15:0] data8C ,
  input wire [15:0] data9A ,
  input wire [15:0] data9B ,
  input wire [15:0] data9C ,
  input wire [15:0] data10A ,
  input wire [15:0] data10B ,
  input wire [15:0] data10C ,
  input wire [15:0] data11A ,
  input wire [15:0] data11B ,
  input wire [15:0] data11C ,
  input wire [15:0] data12A ,
  input wire [15:0] data12B ,
  input wire [15:0] data12C ,
  input wire [15:0] data13A ,
  input wire [15:0] data13B ,
  input wire [15:0] data13C ,
  input wire [15:0] data14A ,
  input wire [15:0] data14B ,
  input wire [15:0] data14C ,
  input wire [15:0] data15A ,
  input wire [15:0] data15B ,
  input wire [15:0] data15C ,
  input wire [15:0] data16A ,
  input wire [15:0] data16B ,
  input wire [15:0] data16C ,
  input wire [15:0] data17A ,
  input wire [15:0] data17B ,
  input wire [15:0] data17C ,
  input wire [15:0] data18A ,
  input wire [15:0] data18B ,
  input wire [15:0] data18C ,
  input wire [15:0] data19A ,
  input wire [15:0] data19B ,
  input wire [15:0] data19C ,
  input wire [15:0] data20A ,
  input wire [15:0] data20B ,
  input wire [15:0] data20C ,
  input wire [15:0] data21A ,
  input wire [15:0] data21B ,
  input wire [15:0] data21C ,
  input wire [15:0] data22A ,
  input wire [15:0] data22B ,
  input wire [15:0] data22C ,
  input wire [15:0] data23A ,
  input wire [15:0] data23B ,
  input wire [15:0] data23C ,
  input wire [15:0] data24A ,
  input wire [15:0] data24B ,
  input wire [15:0] data24C ,
  input wire [15:0] data25A ,
  input wire [15:0] data25B ,
  input wire [15:0] data25C ,
  input wire [15:0] data26A ,
  input wire [15:0] data26B ,
  input wire [15:0] data26C ,
  input wire [15:0] data27A ,
  input wire [15:0] data27B ,
  input wire [15:0] data27C ,
  input wire [15:0] data28A ,
  input wire [15:0] data28B ,
  input wire [15:0] data28C ,
  input wire [15:0] data29A ,
  input wire [15:0] data29B ,
  input wire [15:0] data29C ,
  input wire [15:0] data30A ,
  input wire [15:0] data30B ,
  input wire [15:0] data30C ,
  input wire [15:0] data31A ,
  input wire [15:0] data31B ,
  input wire [15:0] data31C ,
  input wire [4:0] selA ,
  input wire [4:0] selB ,
  input wire [4:0] selC ,
  output wire [15:0] data_outA ,
  output wire [15:0] data_outB ,
  output wire [15:0] data_outC 
);
reg  [15:0] data_out_rA ;
reg  [15:0] data_out_rB ;
reg  [15:0] data_out_rC ;
initial
  data_out_rA =  16'b0;
initial
  data_out_rB =  16'b0;
initial
  data_out_rC =  16'b0;
assign data_outA =  data_out_rA;
assign data_outB =  data_out_rB;
assign data_outC =  data_out_rC;

always @( * )
  begin
    case (selA)
      5'b000 : data_out_rA =  data0A;
      5'b001 : data_out_rA =  data1A;
      5'b010 : data_out_rA =  data2A;
      5'b011 : data_out_rA =  data3A;
      5'b100 : data_out_rA =  data4A;
      5'b101 : data_out_rA =  data5A;
      5'b110 : data_out_rA =  data6A;
      5'b111 : data_out_rA =  data7A;
      5'b1000 : data_out_rA =  data8A;
      5'b1001 : data_out_rA =  data9A;
      5'b1010 : data_out_rA =  data10A;
      5'b1011 : data_out_rA =  data11A;
      5'b1100 : data_out_rA =  data12A;
      5'b1101 : data_out_rA =  data13A;
      5'b1110 : data_out_rA =  data14A;
      5'b1111 : data_out_rA =  data15A;
      5'b10000 : data_out_rA =  data16A;
      5'b10001 : data_out_rA =  data17A;
      5'b10010 : data_out_rA =  data18A;
      5'b10011 : data_out_rA =  data19A;
      5'b10100 : data_out_rA =  data20A;
      5'b10101 : data_out_rA =  data21A;
      5'b10110 : data_out_rA =  data22A;
      5'b10111 : data_out_rA =  data23A;
      5'b11000 : data_out_rA =  data24A;
      5'b11001 : data_out_rA =  data25A;
      5'b11010 : data_out_rA =  data26A;
      5'b11011 : data_out_rA =  data27A;
      5'b11100 : data_out_rA =  data28A;
      5'b11101 : data_out_rA =  data29A;
      5'b11110 : data_out_rA =  data30A;
      5'b11111 : data_out_rA =  data31A;
      default : data_out_rA =  16'b0;
    endcase
  end

always @( * )
  begin
    case (selB)
      5'b000 : data_out_rB =  data0B;
      5'b001 : data_out_rB =  data1B;
      5'b010 : data_out_rB =  data2B;
      5'b011 : data_out_rB =  data3B;
      5'b100 : data_out_rB =  data4B;
      5'b101 : data_out_rB =  data5B;
      5'b110 : data_out_rB =  data6B;
      5'b111 : data_out_rB =  data7B;
      5'b1000 : data_out_rB =  data8B;
      5'b1001 : data_out_rB =  data9B;
      5'b1010 : data_out_rB =  data10B;
      5'b1011 : data_out_rB =  data11B;
      5'b1100 : data_out_rB =  data12B;
      5'b1101 : data_out_rB =  data13B;
      5'b1110 : data_out_rB =  data14B;
      5'b1111 : data_out_rB =  data15B;
      5'b10000 : data_out_rB =  data16B;
      5'b10001 : data_out_rB =  data17B;
      5'b10010 : data_out_rB =  data18B;
      5'b10011 : data_out_rB =  data19B;
      5'b10100 : data_out_rB =  data20B;
      5'b10101 : data_out_rB =  data21B;
      5'b10110 : data_out_rB =  data22B;
      5'b10111 : data_out_rB =  data23B;
      5'b11000 : data_out_rB =  data24B;
      5'b11001 : data_out_rB =  data25B;
      5'b11010 : data_out_rB =  data26B;
      5'b11011 : data_out_rB =  data27B;
      5'b11100 : data_out_rB =  data28B;
      5'b11101 : data_out_rB =  data29B;
      5'b11110 : data_out_rB =  data30B;
      5'b11111 : data_out_rB =  data31B;
      default : data_out_rB =  16'b0;
    endcase
  end

always @( * )
  begin
    case (selC)
      5'b000 : data_out_rC =  data0C;
      5'b001 : data_out_rC =  data1C;
      5'b010 : data_out_rC =  data2C;
      5'b011 : data_out_rC =  data3C;
      5'b100 : data_out_rC =  data4C;
      5'b101 : data_out_rC =  data5C;
      5'b110 : data_out_rC =  data6C;
      5'b111 : data_out_rC =  data7C;
      5'b1000 : data_out_rC =  data8C;
      5'b1001 : data_out_rC =  data9C;
      5'b1010 : data_out_rC =  data10C;
      5'b1011 : data_out_rC =  data11C;
      5'b1100 : data_out_rC =  data12C;
      5'b1101 : data_out_rC =  data13C;
      5'b1110 : data_out_rC =  data14C;
      5'b1111 : data_out_rC =  data15C;
      5'b10000 : data_out_rC =  data16C;
      5'b10001 : data_out_rC =  data17C;
      5'b10010 : data_out_rC =  data18C;
      5'b10011 : data_out_rC =  data19C;
      5'b10100 : data_out_rC =  data20C;
      5'b10101 : data_out_rC =  data21C;
      5'b10110 : data_out_rC =  data22C;
      5'b10111 : data_out_rC =  data23C;
      5'b11000 : data_out_rC =  data24C;
      5'b11001 : data_out_rC =  data25C;
      5'b11010 : data_out_rC =  data26C;
      5'b11011 : data_out_rC =  data27C;
      5'b11100 : data_out_rC =  data28C;
      5'b11101 : data_out_rC =  data29C;
      5'b11110 : data_out_rC =  data30C;
      5'b11111 : data_out_rC =  data31C;
      default : data_out_rC =  16'b0;
    endcase
  end
endmodule
