/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/control_bus_structTMR.v                                                       *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:33                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: control_bus_struct.v                                                                   *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 21:55:53                                                *
 *           File Size         : 3900                                                               *
 *           MD5 hash          : 92fc52db870783d4fbf991348b332ee3                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module control_busTMR(
  input wire [4:0] addrA ,
  input wire [4:0] addrB ,
  input wire [4:0] addrC ,
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  csA ,
  input wire  csB ,
  input wire  csC ,
  input wire  cs_pA ,
  input wire  cs_pB ,
  input wire  cs_pC ,
  input wire  misoA ,
  input wire  misoB ,
  input wire  misoC ,
  input wire [4:0] n_busesA ,
  input wire [4:0] n_busesB ,
  input wire [4:0] n_busesC ,
  input wire  power_bus_enA ,
  input wire  power_bus_enB ,
  input wire  power_bus_enC ,
  input wire  rstA ,
  input wire  rstB ,
  input wire  rstC ,
  input wire  rst_cnt_oscA ,
  input wire  rst_cnt_oscB ,
  input wire  rst_cnt_oscC ,
  input wire  start_cnt_oscA ,
  input wire  start_cnt_oscB ,
  input wire  start_cnt_oscC ,
  output wire  cs_activeA ,
  output wire  cs_activeB ,
  output wire  cs_activeC ,
  output reg  end_osc_cntA ,
  output reg  end_osc_cntB ,
  output reg  end_osc_cntC ,
  output wire  mosiA ,
  output wire  mosiB ,
  output wire  mosiC ,
  output wire [4:0] power_bus_cntA ,
  output wire [4:0] power_bus_cntB ,
  output wire [4:0] power_bus_cntC ,
  output wire  sckA ,
  output wire  sckB ,
  output wire  sckC 
);
wire sck;
wire [7:0] rxdat;
wire mosi;
wire busy;
wor txdatTmrError;
wire [7:0] txdat;
wor transceiveTmrError;
wire transceive;
wor rstTmrError;
wire rst;
wor misoTmrError;
wire miso;
wor clkTmrError;
wire clk;
wire busyA;
wire busyB;
wire busyC;
wire [7:0] data_initA;
wire [7:0] data_initB;
wire [7:0] data_initC;
reg  def_value_0A ;
reg  def_value_0B ;
reg  def_value_0C ;
wire output0A;
wire output0B;
wire output0C;
wire output1A;
wire output1B;
wire output1C;
wire output10A;
wire output10B;
wire output10C;
wire output11A;
wire output11B;
wire output11C;
wire output12A;
wire output12B;
wire output12C;
wire output13A;
wire output13B;
wire output13C;
wire output14A;
wire output14B;
wire output14C;
wire output15A;
wire output15B;
wire output15C;
wire output16A;
wire output16B;
wire output16C;
wire output17A;
wire output17B;
wire output17C;
wire output18A;
wire output18B;
wire output18C;
wire output19A;
wire output19B;
wire output19C;
wire output2A;
wire output2B;
wire output2C;
wire output20A;
wire output20B;
wire output20C;
wire output21A;
wire output21B;
wire output21C;
wire output22A;
wire output22B;
wire output22C;
wire output23A;
wire output23B;
wire output23C;
wire output24A;
wire output24B;
wire output24C;
wire output25A;
wire output25B;
wire output25C;
wire output26A;
wire output26B;
wire output26C;
wire output27A;
wire output27B;
wire output27C;
wire output28A;
wire output28B;
wire output28C;
wire output29A;
wire output29B;
wire output29C;
wire output3A;
wire output3B;
wire output3C;
wire output30A;
wire output30B;
wire output30C;
wire output31A;
wire output31B;
wire output31C;
wire output4A;
wire output4B;
wire output4C;
wire output5A;
wire output5B;
wire output5C;
wire output6A;
wire output6B;
wire output6C;
wire output7A;
wire output7B;
wire output7C;
wire output8A;
wire output8B;
wire output8C;
wire output9A;
wire output9B;
wire output9C;
wire [7:0] rxdatA;
wire [7:0] rxdatB;
wire [7:0] rxdatC;
wire transceiveA;
wire transceiveB;
wire transceiveC;
wire [7:0] txdatA;
wire [7:0] txdatB;
wire [7:0] txdatC;

bit_counterTMR bit_counter_trim (
    .ext_rstA(rst_cnt_oscA),
    .ext_rstB(rst_cnt_oscB),
    .ext_rstC(rst_cnt_oscC),
    .rstA(rstA),
    .rstB(rstB),
    .rstC(rstC),
    .data_outA(power_bus_cntA),
    .data_outB(power_bus_cntB),
    .data_outC(power_bus_cntC),
    .clkA(clkA),
    .clkB(clkB),
    .clkC(clkC),
    .cnt_enableA(start_cnt_oscA),
    .cnt_enableB(start_cnt_oscB),
    .cnt_enableC(start_cnt_oscC)
    );

demux1_1bitTMR demux1_1bit_cs_tra (
    .def_valueA(def_value_0A),
    .def_valueB(def_value_0B),
    .def_valueC(def_value_0C),
    .selA(power_bus_cntA),
    .selB(power_bus_cntB),
    .selC(power_bus_cntC),
    .input_portA(power_bus_enA),
    .input_portB(power_bus_enB),
    .input_portC(power_bus_enC),
    .output0A(output0A),
    .output0B(output0B),
    .output0C(output0C),
    .output1A(output1A),
    .output1B(output1B),
    .output1C(output1C),
    .output2A(output2A),
    .output2B(output2B),
    .output2C(output2C),
    .output3A(output3A),
    .output3B(output3B),
    .output3C(output3C),
    .output4A(output4A),
    .output4B(output4B),
    .output4C(output4C),
    .output5A(output5A),
    .output5B(output5B),
    .output5C(output5C),
    .output6A(output6A),
    .output6B(output6B),
    .output6C(output6C),
    .output7A(output7A),
    .output7B(output7B),
    .output7C(output7C),
    .output8A(output8A),
    .output8B(output8B),
    .output8C(output8C),
    .output9A(output9A),
    .output9B(output9B),
    .output9C(output9C),
    .output10A(output10A),
    .output10B(output10B),
    .output10C(output10C),
    .output11A(output11A),
    .output11B(output11B),
    .output11C(output11C),
    .output12A(output12A),
    .output12B(output12B),
    .output12C(output12C),
    .output13A(output13A),
    .output13B(output13B),
    .output13C(output13C),
    .output14A(output14A),
    .output14B(output14B),
    .output14C(output14C),
    .output15A(output15A),
    .output15B(output15B),
    .output15C(output15C),
    .output16A(output16A),
    .output16B(output16B),
    .output16C(output16C),
    .output17A(output17A),
    .output17B(output17B),
    .output17C(output17C),
    .output18A(output18A),
    .output18B(output18B),
    .output18C(output18C),
    .output19A(output19A),
    .output19B(output19B),
    .output19C(output19C),
    .output20A(output20A),
    .output20B(output20B),
    .output20C(output20C),
    .output21A(output21A),
    .output21B(output21B),
    .output21C(output21C),
    .output22A(output22A),
    .output22B(output22B),
    .output22C(output22C),
    .output23A(output23A),
    .output23B(output23B),
    .output23C(output23C),
    .output24A(output24A),
    .output24B(output24B),
    .output24C(output24C),
    .output25A(output25A),
    .output25B(output25B),
    .output25C(output25C),
    .output26A(output26A),
    .output26B(output26B),
    .output26C(output26C),
    .output27A(output27A),
    .output27B(output27B),
    .output27C(output27C),
    .output28A(output28A),
    .output28B(output28B),
    .output28C(output28C),
    .output29A(output29A),
    .output29B(output29B),
    .output29C(output29C),
    .output30A(output30A),
    .output30B(output30B),
    .output30C(output30C),
    .output31A(output31A),
    .output31B(output31B),
    .output31C(output31C)
    );

initialize_spi_communcationTMR initialize_spi_bus_cont (
    .addrA(addrA),
    .addrB(addrB),
    .addrC(addrC),
    .data_initA(data_initA),
    .data_initB(data_initB),
    .data_initC(data_initC)
    );

spi_master #(.F_CLK(40000000), .F_SCK(10000000)) spi_master0 (
    .clk(clk),
    .rst(rst),
    .sck(sck),
    .miso(miso),
    .mosi(mosi),
    .txdat(txdat),
    .rxdat(rxdat),
    .transceive(transceive),
    .busy(busy)
    );
initial
  begin
    end_osc_cntA =  1'b0;
    def_value_0A =  1'b0;
  end
initial
  begin
    end_osc_cntB =  1'b0;
    def_value_0B =  1'b0;
  end
initial
  begin
    end_osc_cntC =  1'b0;
    def_value_0C =  1'b0;
  end
assign transceiveA =  (! cs_pA || ! csA );
assign transceiveB =  (! cs_pB || ! csB );
assign transceiveC =  (! cs_pC || ! csC );
assign cs_activeA =  (csA||cs_pA);
assign cs_activeB =  (csB||cs_pB);
assign cs_activeC =  (csC||cs_pC);

always @( posedge clkA )
  begin
    if (!rstA)
      end_osc_cntA <= 0;
    else
      case (power_bus_cntA)
        n_busesA : end_osc_cntA <= 1;
        default : end_osc_cntA <= 0;
      endcase
  end

always @( posedge clkB )
  begin
    if (!rstB)
      end_osc_cntB <= 0;
    else
      case (power_bus_cntB)
        n_busesB : end_osc_cntB <= 1;
        default : end_osc_cntB <= 0;
      endcase
  end

always @( posedge clkC )
  begin
    if (!rstC)
      end_osc_cntC <= 0;
    else
      case (power_bus_cntC)
        n_busesC : end_osc_cntC <= 1;
        default : end_osc_cntC <= 0;
      endcase
  end

majorityVoter clkVoter (
    .inA(clkA),
    .inB(clkB),
    .inC(clkC),
    .out(clk),
    .tmrErr(clkTmrError)
    );

majorityVoter misoVoter (
    .inA(misoA),
    .inB(misoB),
    .inC(misoC),
    .out(miso),
    .tmrErr(misoTmrError)
    );

majorityVoter rstVoter (
    .inA(rstA),
    .inB(rstB),
    .inC(rstC),
    .out(rst),
    .tmrErr(rstTmrError)
    );

majorityVoter transceiveVoter (
    .inA(transceiveA),
    .inB(transceiveB),
    .inC(transceiveC),
    .out(transceive),
    .tmrErr(transceiveTmrError)
    );

majorityVoter #(.WIDTH(8)) txdatVoter (
    .inA(txdatA),
    .inB(txdatB),
    .inC(txdatC),
    .out(txdat),
    .tmrErr(txdatTmrError)
    );

fanout busyFanout (
    .in(busy),
    .outA(busyA),
    .outB(busyB),
    .outC(busyC)
    );

fanout mosiFanout (
    .in(mosi),
    .outA(mosiA),
    .outB(mosiB),
    .outC(mosiC)
    );

fanout #(.WIDTH(8)) rxdatFanout (
    .in(rxdat),
    .outA(rxdatA),
    .outB(rxdatB),
    .outC(rxdatC)
    );

fanout sckFanout (
    .in(sck),
    .outA(sckA),
    .outB(sckB),
    .outC(sckC)
    );
endmodule

