//
// Module mopshub_triplicated.monitor_busTMR.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 09:18:14 05/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//


module monitor_busTMR( 
   // Port Declarations
   input   wire    [4:0]   addrA, 
   input   wire    [4:0]   addrB, 
   input   wire    [4:0]   addrC, 
   input   wire            buffer_spi_tra_enA, 
   input   wire            buffer_spi_tra_enB, 
   input   wire            buffer_spi_tra_enC, 
   input   wire            clkA, 
   input   wire            clkB, 
   input   wire            clkC, 
   input   wire            csA, 
   input   wire            csB, 
   input   wire            csC, 
   input   wire            cs_mA, 
   input   wire            cs_mB, 
   input   wire            cs_mC, 
   input   wire    [31:0]  data_tra_spiA, 
   input   wire    [31:0]  data_tra_spiB, 
   input   wire    [31:0]  data_tra_spiC, 
   input   wire            misoA, 
   input   wire            misoB, 
   input   wire            misoC, 
   input   wire            rstA, 
   input   wire            rstB, 
   input   wire            rstC, 
   input   wire            start_read_misoA, 
   input   wire            start_read_misoB, 
   input   wire            start_read_misoC, 
   output  wire            cs_activeA, 
   output  wire            cs_activeB, 
   output  wire            cs_activeC, 
   output  wire    [31:0]  data_rec_spiA, 
   output  wire    [31:0]  data_rec_spiB, 
   output  wire    [31:0]  data_rec_spiC, 
   output  wire            end_read_misoA, 
   output  wire            end_read_misoB, 
   output  wire            end_read_misoC, 
   output  wire            mosiA, 
   output  wire            mosiB, 
   output  wire            mosiC, 
   output  wire            sckA, 
   output  wire            sckB, 
   output  wire            sckC
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire        ss;
wire        sck;
wire  [7:0] rxdat;
wire        mosi;
wor         txdatTmrError;
wire  [7:0] txdat;
wor         transceiveTmrError;
wire        transceive;
wor         rstTmrError;
wire        rst;
wor         misoTmrError;
wire        miso;
wor         clkTmrError;
wire        clk;
wire  [7:0] data_initA;
wire  [7:0] data_initB;
wire  [7:0] data_initC;
wire        def_value_0A        = 1'b0;
wire        def_value_0B        = 1'b0;
wire        def_value_0C        = 1'b0;
wire        output0A;
wire        output0B;
wire        output0C;
wire        output1A;
wire        output1B;
wire        output1C;
wire        output10A;
wire        output10B;
wire        output10C;
wire        output11A;
wire        output11B;
wire        output11C;
wire        output12A;
wire        output12B;
wire        output12C;
wire        output13A;
wire        output13B;
wire        output13C;
wire        output14A;
wire        output14B;
wire        output14C;
wire        output15A;
wire        output15B;
wire        output15C;
wire        output16A;
wire        output16B;
wire        output16C;
wire        output17A;
wire        output17B;
wire        output17C;
wire        output18A;
wire        output18B;
wire        output18C;
wire        output19A;
wire        output19B;
wire        output19C;
wire        output2A;
wire        output2B;
wire        output2C;
wire        output20A;
wire        output20B;
wire        output20C;
wire        output21A;
wire        output21B;
wire        output21C;
wire        output22A;
wire        output22B;
wire        output22C;
wire        output23A;
wire        output23B;
wire        output23C;
wire        output24A;
wire        output24B;
wire        output24C;
wire        output25A;
wire        output25B;
wire        output25C;
wire        output26A;
wire        output26B;
wire        output26C;
wire        output27A;
wire        output27B;
wire        output27C;
wire        output28A;
wire        output28B;
wire        output28C;
wire        output29A;
wire        output29B;
wire        output29C;
wire        output3A;
wire        output3B;
wire        output3C;
wire        output30A;
wire        output30B;
wire        output30C;
wire        output31A;
wire        output31B;
wire        output31C;
wire        output4A;
wire        output4B;
wire        output4C;
wire        output5A;
wire        output5B;
wire        output5C;
wire        output6A;
wire        output6B;
wire        output6C;
wire        output7A;
wire        output7B;
wire        output7C;
wire        output8A;
wire        output8B;
wire        output8C;
wire        output9A;
wire        output9B;
wire        output9C;
wire  [7:0] rxdatA;
wire  [7:0] rxdatB;
wire  [7:0] rxdatC;
wire  [7:0] spi_idA;
wire  [7:0] spi_idB;
wire  [7:0] spi_idC;
wire  [7:0] spi_regA;
wire  [7:0] spi_regB;
wire  [7:0] spi_regC;
wire  [7:0] spi_selectA;
wire  [7:0] spi_selectB;
wire  [7:0] spi_selectC;
wire  [4:0] spi_select_activeA;
wire  [4:0] spi_select_activeB;
wire  [4:0] spi_select_activeC;
wire        ssA;
wire        ssB;
wire        ssC;
wire        transceiveA;
wire        transceiveB;
wire        transceiveC;
wire  [7:0] txdatA;
wire  [7:0] txdatB;
wire  [7:0] txdatC;


// Instances 
spi_master #(40000000,10000000) spi_master0( 
   .clk        (clk), 
   .rst        (rst), 
   .sck        (sck), 
   .miso       (miso), 
   .mosi       (mosi), 
   .txdat      (txdat), 
   .rxdat      (rxdat), 
   .transceive (transceive), 
   .busy       (ss)
); 

buffer_rec_spi_dataTMR buffer_rec_spi_data0( 
   .clkA           (clkA), 
   .clkB           (clkB), 
   .clkC           (clkC), 
   .rstA           (rstA), 
   .rstB           (rstB), 
   .rstC           (rstC), 
   .buffer_enA     (start_read_misoA), 
   .buffer_enB     (start_read_misoB), 
   .buffer_enC     (start_read_misoC), 
   .spi_id_inA     (spi_idA), 
   .spi_id_inB     (spi_idB), 
   .spi_id_inC     (spi_idC), 
   .spi_regA       (spi_regA), 
   .spi_regB       (spi_regB), 
   .spi_regC       (spi_regC), 
   .data_rec_inA   (rxdatA), 
   .data_rec_inB   (rxdatB), 
   .data_rec_inC   (rxdatC), 
   .spi_selectA    (spi_selectA), 
   .spi_selectB    (spi_selectB), 
   .spi_selectC    (spi_selectC), 
   .end_read_misoA (end_read_misoA), 
   .end_read_misoB (end_read_misoB), 
   .end_read_misoC (end_read_misoC), 
   .data_rec_outA  (data_rec_spiA), 
   .data_rec_outB  (data_rec_spiB), 
   .data_rec_outC  (data_rec_spiC)
); 

buffer_tra_spi_dataTMR buffer_tra_spi_data0( 
   .clkA          (clkA), 
   .clkB          (clkB), 
   .clkC          (clkC), 
   .data_tra_inA  (data_tra_spiA), 
   .data_tra_inB  (data_tra_spiB), 
   .data_tra_inC  (data_tra_spiC), 
   .buffer_enA    (buffer_spi_tra_enA), 
   .buffer_enB    (buffer_spi_tra_enB), 
   .buffer_enC    (buffer_spi_tra_enC), 
   .rstA          (rstA), 
   .rstB          (rstB), 
   .rstC          (rstC), 
   .spi_idA       (spi_idA), 
   .spi_idB       (spi_idB), 
   .spi_idC       (spi_idC), 
   .spi_regA      (spi_regA), 
   .spi_regB      (spi_regB), 
   .spi_regC      (spi_regC), 
   .spi_selectA   (spi_selectA), 
   .spi_selectB   (spi_selectB), 
   .spi_selectC   (spi_selectC), 
   .data_tra_outA (txdatA), 
   .data_tra_outB (txdatB), 
   .data_tra_outC (txdatC)
); 

demux1_1bitTMR demux1_1bit_cs_tra( 
   .def_valueA  (def_value_0A), 
   .def_valueB  (def_value_0B), 
   .def_valueC  (def_value_0C), 
   .selA        (spi_select_activeA), 
   .selB        (spi_select_activeB), 
   .selC        (spi_select_activeC), 
   .input_portA (cs_activeA), 
   .input_portB (cs_activeB), 
   .input_portC (cs_activeC), 
   .output0A    (output0A), 
   .output0B    (output0B), 
   .output0C    (output0C), 
   .output1A    (output1A), 
   .output1B    (output1B), 
   .output1C    (output1C), 
   .output2A    (output2A), 
   .output2B    (output2B), 
   .output2C    (output2C), 
   .output3A    (output3A), 
   .output3B    (output3B), 
   .output3C    (output3C), 
   .output4A    (output4A), 
   .output4B    (output4B), 
   .output4C    (output4C), 
   .output5A    (output5A), 
   .output5B    (output5B), 
   .output5C    (output5C), 
   .output6A    (output6A), 
   .output6B    (output6B), 
   .output6C    (output6C), 
   .output7A    (output7A), 
   .output7B    (output7B), 
   .output7C    (output7C), 
   .output8A    (output8A), 
   .output8B    (output8B), 
   .output8C    (output8C), 
   .output9A    (output9A), 
   .output9B    (output9B), 
   .output9C    (output9C), 
   .output10A   (output10A), 
   .output10B   (output10B), 
   .output10C   (output10C), 
   .output11A   (output11A), 
   .output11B   (output11B), 
   .output11C   (output11C), 
   .output12A   (output12A), 
   .output12B   (output12B), 
   .output12C   (output12C), 
   .output13A   (output13A), 
   .output13B   (output13B), 
   .output13C   (output13C), 
   .output14A   (output14A), 
   .output14B   (output14B), 
   .output14C   (output14C), 
   .output15A   (output15A), 
   .output15B   (output15B), 
   .output15C   (output15C), 
   .output16A   (output16A), 
   .output16B   (output16B), 
   .output16C   (output16C), 
   .output17A   (output17A), 
   .output17B   (output17B), 
   .output17C   (output17C), 
   .output18A   (output18A), 
   .output18B   (output18B), 
   .output18C   (output18C), 
   .output19A   (output19A), 
   .output19B   (output19B), 
   .output19C   (output19C), 
   .output20A   (output20A), 
   .output20B   (output20B), 
   .output20C   (output20C), 
   .output21A   (output21A), 
   .output21B   (output21B), 
   .output21C   (output21C), 
   .output22A   (output22A), 
   .output22B   (output22B), 
   .output22C   (output22C), 
   .output23A   (output23A), 
   .output23B   (output23B), 
   .output23C   (output23C), 
   .output24A   (output24A), 
   .output24B   (output24B), 
   .output24C   (output24C), 
   .output25A   (output25A), 
   .output25B   (output25B), 
   .output25C   (output25C), 
   .output26A   (output26A), 
   .output26B   (output26B), 
   .output26C   (output26C), 
   .output27A   (output27A), 
   .output27B   (output27B), 
   .output27C   (output27C), 
   .output28A   (output28A), 
   .output28B   (output28B), 
   .output28C   (output28C), 
   .output29A   (output29A), 
   .output29B   (output29B), 
   .output29C   (output29C), 
   .output30A   (output30A), 
   .output30B   (output30B), 
   .output30C   (output30C), 
   .output31A   (output31A), 
   .output31B   (output31B), 
   .output31C   (output31C)
); 

fanout mosiFanout( 
   .in   (mosi), 
   .outA (mosiA), 
   .outB (mosiB), 
   .outC (mosiC)
); 

fanout #(8) rxdatFanout( 
   .in   (rxdat), 
   .outA (rxdatA), 
   .outB (rxdatB), 
   .outC (rxdatC)
); 

fanout sckFanout( 
   .in   (sck), 
   .outA (sckA), 
   .outB (sckB), 
   .outC (sckC)
); 

fanout ssFanout( 
   .in   (ss), 
   .outA (ssA), 
   .outB (ssB), 
   .outC (ssC)
); 

initialize_spi_communcationTMR initialize_spi_monitoring0( 
   .addrA      (addrA), 
   .addrB      (addrB), 
   .addrC      (addrC), 
   .data_initA (data_initA), 
   .data_initB (data_initB), 
   .data_initC (data_initC)
); 

majorityVoter clkVoter( 
   .inA    (clkA), 
   .inB    (clkB), 
   .inC    (clkC), 
   .out    (clk), 
   .tmrErr (clkTmrError)
); 

majorityVoter misoVoter( 
   .inA    (misoA), 
   .inB    (misoB), 
   .inC    (misoC), 
   .out    (miso), 
   .tmrErr (misoTmrError)
); 

majorityVoter rstVoter( 
   .inA    (rstA), 
   .inB    (rstB), 
   .inC    (rstC), 
   .out    (rst), 
   .tmrErr (rstTmrError)
); 

majorityVoter transceiveVoter( 
   .inA    (transceiveA), 
   .inB    (transceiveB), 
   .inC    (transceiveC), 
   .out    (transceive), 
   .tmrErr (transceiveTmrError)
); 

majorityVoter #(8) txdatVoter( 
   .inA    (txdatA), 
   .inB    (txdatB), 
   .inC    (txdatC), 
   .out    (txdat), 
   .tmrErr (txdatTmrError)
); 

// HDL Embedded Text Block 1 eb1
assign spi_select_activeA =  spi_selectA[4:0] ;
assign spi_select_activeB =  spi_selectB[4:0] ;
assign spi_select_activeC =  spi_selectC[4:0] ;
assign transceiveA =  (! csA || ! cs_mA );
assign transceiveB =  (! csB || ! cs_mB );
assign transceiveC =  (! csC || ! cs_mC );
assign cs_activeA =  (csA||cs_mA);
assign cs_activeB =  (csB||cs_mB);
assign cs_activeC =  (csC||cs_mC);

endmodule // monitor_busTMR
