//
// Module mopshub_lib.canakari_top_16bus.struct
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:47:14 12/06/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module canakari_top_16bus( 
   // Port Declarations
   input   wire    [4:0]   address, 
   input   wire    [4:0]   bus_tra_select, 
   input   wire            canakari_timeoutrst, 
   input   wire            clk, 
   input   wire            enable_cs_sig, 
   input   wire            end_can_proc, 
   input   wire            endwait, 
   input   wire            read_n_sig, 
   input   wire            rst, 
   input   wire            rx0, 
   input   wire            rx1, 
   input   wire            rx10, 
   input   wire            rx11, 
   input   wire            rx12, 
   input   wire            rx13, 
   input   wire            rx14, 
   input   wire            rx15, 
   input   wire            rx2, 
   input   wire            rx3, 
   input   wire            rx4, 
   input   wire            rx5, 
   input   wire            rx6, 
   input   wire            rx7, 
   input   wire            rx8, 
   input   wire            rx9, 
   input   wire            write_n_sig, 
   input   wire    [15:0]  writedata, 
   output  wire    [4:0]   bus_rec_select, 
   output  wire            canakari_entimeout, 
   output  wire            irq_can_rec, 
   output  wire            irq_can_tra, 
   output  wire    [15:0]  readdata, 
   output  wire            tx0, 
   output  wire            tx1, 
   output  wire            tx10, 
   output  wire            tx11, 
   output  wire            tx12, 
   output  wire            tx13, 
   output  wire            tx14, 
   output  wire            tx15, 
   output  wire            tx2, 
   output  wire            tx3, 
   output  wire            tx4, 
   output  wire            tx5, 
   output  wire            tx6, 
   output  wire            tx7, 
   output  wire            tx8, 
   output  wire            tx9
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire         cs0;
wire         cs1;
wire         cs10;
wire         cs11;
wire         cs12;
wire         cs13;
wire         cs14;
wire         cs15;
wire         cs2;
wire         cs3;
wire         cs4;
wire         cs5;
wire         cs6;
wire         cs7;
wire         cs8;
wire         cs9;
wire         cs_rec0;
wire         cs_rec1;
wire         cs_rec10;
wire         cs_rec11;
wire         cs_rec12;
wire         cs_rec13;
wire         cs_rec14;
wire         cs_rec15;
wire         cs_rec2;
wire         cs_rec3;
wire         cs_rec4;
wire         cs_rec5;
wire         cs_rec6;
wire         cs_rec7;
wire         cs_rec8;
wire         cs_rec9;
wire         cs_tra0;
wire         cs_tra1;
wire         cs_tra10;
wire         cs_tra11;
wire         cs_tra12;
wire         cs_tra13;
wire         cs_tra14;
wire         cs_tra15;
wire         cs_tra2;
wire         cs_tra3;
wire         cs_tra4;
wire         cs_tra5;
wire         cs_tra6;
wire         cs_tra7;
wire         cs_tra8;
wire         cs_tra9;
wire         irqsucrec0;
wire         irqsucrec1;
wire         irqsucrec10;
wire         irqsucrec11;
wire         irqsucrec12;
wire         irqsucrec13;
wire         irqsucrec14;
wire         irqsucrec15;
wire         irqsucrec2;
wire         irqsucrec3;
wire         irqsucrec4;
wire         irqsucrec5;
wire         irqsucrec6;
wire         irqsucrec7;
wire         irqsucrec8;
wire         irqsucrec9;
wire         irqsuctra0;
wire         irqsuctra1;
wire         irqsuctra10;
wire         irqsuctra11;
wire         irqsuctra12;
wire         irqsuctra13;
wire         irqsuctra14;
wire         irqsuctra15;
wire         irqsuctra2;
wire         irqsuctra3;
wire         irqsuctra4;
wire         irqsuctra5;
wire         irqsuctra6;
wire         irqsuctra7;
wire         irqsuctra8;
wire         irqsuctra9;
wire         read_n0;
wire         read_n1;
wire         read_n10;
wire         read_n11;
wire         read_n12;
wire         read_n13;
wire         read_n14;
wire         read_n15;
wire         read_n2;
wire         read_n3;
wire         read_n4;
wire         read_n5;
wire         read_n6;
wire         read_n7;
wire         read_n8;
wire         read_n9;
wire  [15:0] readdata0;
wire  [15:0] readdata1;
wire  [15:0] readdata10;
wire  [15:0] readdata11;
wire  [15:0] readdata12;
wire  [15:0] readdata13;
wire  [15:0] readdata14;
wire  [15:0] readdata15;
wire  [15:0] readdata2;
wire  [15:0] readdata3;
wire  [15:0] readdata4;
wire  [15:0] readdata5;
wire  [15:0] readdata6;
wire  [15:0] readdata7;
wire  [15:0] readdata8;
wire  [15:0] readdata9;
wire         write_n0;
wire         write_n1;
wire         write_n10;
wire         write_n11;
wire         write_n12;
wire         write_n13;
wire         write_n14;
wire         write_n15;
wire         write_n2;
wire         write_n3;
wire         write_n4;
wire         write_n5;
wire         write_n6;
wire         write_n7;
wire         write_n8;
wire         write_n9;
wire  [15:0] writedata0;
wire  [15:0] writedata1;
wire  [15:0] writedata10;
wire  [15:0] writedata11;
wire  [15:0] writedata12;
wire  [15:0] writedata13;
wire  [15:0] writedata14;
wire  [15:0] writedata15;
wire  [15:0] writedata2;
wire  [15:0] writedata3;
wire  [15:0] writedata4;
wire  [15:0] writedata5;
wire  [15:0] writedata6;
wire  [15:0] writedata7;
wire  [15:0] writedata8;
wire  [15:0] writedata9;


// Instances 
canakari_0_7 cancari_block0_7( 
   .address    (address), 
   .clk        (clk), 
   .cs0        (cs0), 
   .cs1        (cs1), 
   .cs2        (cs2), 
   .cs3        (cs3), 
   .cs4        (cs4), 
   .cs5        (cs5), 
   .cs6        (cs6), 
   .cs7        (cs7), 
   .read_n0    (read_n0), 
   .read_n1    (read_n1), 
   .read_n2    (read_n2), 
   .read_n3    (read_n3), 
   .read_n4    (read_n4), 
   .read_n5    (read_n5), 
   .read_n6    (read_n6), 
   .read_n7    (read_n7), 
   .rst        (rst), 
   .rx0        (rx0), 
   .rx1        (rx1), 
   .rx2        (rx2), 
   .rx3        (rx3), 
   .rx4        (rx4), 
   .rx5        (rx5), 
   .rx6        (rx6), 
   .rx7        (rx7), 
   .write_n0   (write_n0), 
   .write_n1   (write_n1), 
   .write_n2   (write_n2), 
   .write_n3   (write_n3), 
   .write_n4   (write_n4), 
   .write_n5   (write_n5), 
   .write_n6   (write_n6), 
   .write_n7   (write_n7), 
   .writedata0 (writedata0), 
   .writedata1 (writedata1), 
   .writedata2 (writedata2), 
   .writedata3 (writedata3), 
   .writedata4 (writedata4), 
   .writedata5 (writedata5), 
   .writedata6 (writedata6), 
   .writedata7 (writedata7), 
   .irqsucrec0 (irqsucrec0), 
   .irqsucrec1 (irqsucrec1), 
   .irqsucrec2 (irqsucrec2), 
   .irqsucrec3 (irqsucrec3), 
   .irqsucrec4 (irqsucrec4), 
   .irqsucrec5 (irqsucrec5), 
   .irqsucrec6 (irqsucrec6), 
   .irqsucrec7 (irqsucrec7), 
   .irqsuctra0 (irqsuctra0), 
   .irqsuctra1 (irqsuctra1), 
   .irqsuctra2 (irqsuctra2), 
   .irqsuctra3 (irqsuctra3), 
   .irqsuctra4 (irqsuctra4), 
   .irqsuctra5 (irqsuctra5), 
   .irqsuctra6 (irqsuctra6), 
   .irqsuctra7 (irqsuctra7), 
   .readdata0  (readdata0), 
   .readdata1  (readdata1), 
   .readdata2  (readdata2), 
   .readdata3  (readdata3), 
   .readdata4  (readdata4), 
   .readdata5  (readdata5), 
   .readdata6  (readdata6), 
   .readdata7  (readdata7), 
   .tx0        (tx0), 
   .tx1        (tx1), 
   .tx2        (tx2), 
   .tx3        (tx3), 
   .tx4        (tx4), 
   .tx5        (tx5), 
   .tx6        (tx6), 
   .tx7        (tx7)
); 

canakari_0_7 cancari_block8_15( 
   .address    (address), 
   .clk        (clk), 
   .cs0        (cs8), 
   .cs1        (cs9), 
   .cs2        (cs10), 
   .cs3        (cs11), 
   .cs4        (cs12), 
   .cs5        (cs13), 
   .cs6        (cs14), 
   .cs7        (cs15), 
   .read_n0    (read_n8), 
   .read_n1    (read_n9), 
   .read_n2    (read_n10), 
   .read_n3    (read_n11), 
   .read_n4    (read_n12), 
   .read_n5    (read_n13), 
   .read_n6    (read_n14), 
   .read_n7    (read_n15), 
   .rst        (rst), 
   .rx0        (rx8), 
   .rx1        (rx9), 
   .rx2        (rx10), 
   .rx3        (rx11), 
   .rx4        (rx12), 
   .rx5        (rx13), 
   .rx6        (rx14), 
   .rx7        (rx15), 
   .write_n0   (write_n8), 
   .write_n1   (write_n9), 
   .write_n2   (write_n10), 
   .write_n3   (write_n11), 
   .write_n4   (write_n12), 
   .write_n5   (write_n13), 
   .write_n6   (write_n14), 
   .write_n7   (write_n15), 
   .writedata0 (writedata8), 
   .writedata1 (writedata9), 
   .writedata2 (writedata10), 
   .writedata3 (writedata11), 
   .writedata4 (writedata12), 
   .writedata5 (writedata13), 
   .writedata6 (writedata14), 
   .writedata7 (writedata15), 
   .irqsucrec0 (irqsucrec8), 
   .irqsucrec1 (irqsucrec9), 
   .irqsucrec2 (irqsucrec10), 
   .irqsucrec3 (irqsucrec11), 
   .irqsucrec4 (irqsucrec12), 
   .irqsucrec5 (irqsucrec13), 
   .irqsucrec6 (irqsucrec14), 
   .irqsucrec7 (irqsucrec15), 
   .irqsuctra0 (irqsuctra8), 
   .irqsuctra1 (irqsuctra9), 
   .irqsuctra2 (irqsuctra10), 
   .irqsuctra3 (irqsuctra11), 
   .irqsuctra4 (irqsuctra12), 
   .irqsuctra5 (irqsuctra13), 
   .irqsuctra6 (irqsuctra14), 
   .irqsuctra7 (irqsuctra15), 
   .readdata0  (readdata8), 
   .readdata1  (readdata9), 
   .readdata2  (readdata10), 
   .readdata3  (readdata11), 
   .readdata4  (readdata12), 
   .readdata5  (readdata13), 
   .readdata6  (readdata14), 
   .readdata7  (readdata15), 
   .tx0        (tx8), 
   .tx1        (tx9), 
   .tx2        (tx10), 
   .tx3        (tx11), 
   .tx4        (tx12), 
   .tx5        (tx13), 
   .tx6        (tx14), 
   .tx7        (tx15)
); 

node_rec_mux_16 node_rec_mux_160( 
   .canakari_timeoutrst (canakari_timeoutrst), 
   .clk                 (clk), 
   .enable_cs_sig       (enable_cs_sig), 
   .end_can_proc        (end_can_proc), 
   .endwait             (endwait), 
   .irqsucrec0          (irqsucrec0), 
   .irqsucrec1          (irqsucrec1), 
   .irqsucrec10         (irqsucrec10), 
   .irqsucrec11         (irqsucrec11), 
   .irqsucrec12         (irqsucrec12), 
   .irqsucrec13         (irqsucrec13), 
   .irqsucrec14         (irqsucrec14), 
   .irqsucrec15         (irqsucrec15), 
   .irqsucrec2          (irqsucrec2), 
   .irqsucrec3          (irqsucrec3), 
   .irqsucrec4          (irqsucrec4), 
   .irqsucrec5          (irqsucrec5), 
   .irqsucrec6          (irqsucrec6), 
   .irqsucrec7          (irqsucrec7), 
   .irqsucrec8          (irqsucrec8), 
   .irqsucrec9          (irqsucrec9), 
   .read_n_sig          (read_n_sig), 
   .readdata0           (readdata0), 
   .readdata1           (readdata1), 
   .readdata10          (readdata10), 
   .readdata11          (readdata11), 
   .readdata12          (readdata12), 
   .readdata13          (readdata13), 
   .readdata14          (readdata14), 
   .readdata15          (readdata15), 
   .readdata2           (readdata2), 
   .readdata3           (readdata3), 
   .readdata4           (readdata4), 
   .readdata5           (readdata5), 
   .readdata6           (readdata6), 
   .readdata7           (readdata7), 
   .readdata8           (readdata8), 
   .readdata9           (readdata9), 
   .rst                 (rst), 
   .bus_rec_select      (bus_rec_select), 
   .canakari_entimeout  (canakari_entimeout), 
   .cs_rec0             (cs_rec0), 
   .cs_rec1             (cs_rec1), 
   .cs_rec10            (cs_rec10), 
   .cs_rec11            (cs_rec11), 
   .cs_rec12            (cs_rec12), 
   .cs_rec13            (cs_rec13), 
   .cs_rec14            (cs_rec14), 
   .cs_rec15            (cs_rec15), 
   .cs_rec2             (cs_rec2), 
   .cs_rec3             (cs_rec3), 
   .cs_rec4             (cs_rec4), 
   .cs_rec5             (cs_rec5), 
   .cs_rec6             (cs_rec6), 
   .cs_rec7             (cs_rec7), 
   .cs_rec8             (cs_rec8), 
   .cs_rec9             (cs_rec9), 
   .irq_can_rec         (irq_can_rec), 
   .read_n0             (read_n0), 
   .read_n1             (read_n1), 
   .read_n10            (read_n10), 
   .read_n11            (read_n11), 
   .read_n12            (read_n12), 
   .read_n13            (read_n13), 
   .read_n14            (read_n14), 
   .read_n15            (read_n15), 
   .read_n2             (read_n2), 
   .read_n3             (read_n3), 
   .read_n4             (read_n4), 
   .read_n5             (read_n5), 
   .read_n6             (read_n6), 
   .read_n7             (read_n7), 
   .read_n8             (read_n8), 
   .read_n9             (read_n9), 
   .readdata            (readdata)
); 

node_tra_demux_16 node_tra_demux_160( 
   .bus_tra_select (bus_tra_select), 
   .clk            (clk), 
   .enable_cs_sig  (enable_cs_sig), 
   .irqsuctra0     (irqsuctra0), 
   .irqsuctra1     (irqsuctra1), 
   .irqsuctra10    (irqsuctra10), 
   .irqsuctra11    (irqsuctra11), 
   .irqsuctra12    (irqsuctra12), 
   .irqsuctra13    (irqsuctra13), 
   .irqsuctra14    (irqsuctra14), 
   .irqsuctra15    (irqsuctra15), 
   .irqsuctra2     (irqsuctra2), 
   .irqsuctra3     (irqsuctra3), 
   .irqsuctra4     (irqsuctra4), 
   .irqsuctra5     (irqsuctra5), 
   .irqsuctra6     (irqsuctra6), 
   .irqsuctra7     (irqsuctra7), 
   .irqsuctra8     (irqsuctra8), 
   .irqsuctra9     (irqsuctra9), 
   .rst            (rst), 
   .write_n_sig    (write_n_sig), 
   .writedata      (writedata), 
   .cs_tra0        (cs_tra0), 
   .cs_tra1        (cs_tra1), 
   .cs_tra10       (cs_tra10), 
   .cs_tra11       (cs_tra11), 
   .cs_tra12       (cs_tra12), 
   .cs_tra13       (cs_tra13), 
   .cs_tra14       (cs_tra14), 
   .cs_tra15       (cs_tra15), 
   .cs_tra2        (cs_tra2), 
   .cs_tra3        (cs_tra3), 
   .cs_tra4        (cs_tra4), 
   .cs_tra5        (cs_tra5), 
   .cs_tra6        (cs_tra6), 
   .cs_tra7        (cs_tra7), 
   .cs_tra8        (cs_tra8), 
   .cs_tra9        (cs_tra9), 
   .irq_can_tra    (irq_can_tra), 
   .write_n0       (write_n0), 
   .write_n1       (write_n1), 
   .write_n10      (write_n10), 
   .write_n11      (write_n11), 
   .write_n12      (write_n12), 
   .write_n13      (write_n13), 
   .write_n14      (write_n14), 
   .write_n15      (write_n15), 
   .write_n2       (write_n2), 
   .write_n3       (write_n3), 
   .write_n4       (write_n4), 
   .write_n5       (write_n5), 
   .write_n6       (write_n6), 
   .write_n7       (write_n7), 
   .write_n8       (write_n8), 
   .write_n9       (write_n9), 
   .writedata0     (writedata0), 
   .writedata1     (writedata1), 
   .writedata10    (writedata10), 
   .writedata11    (writedata11), 
   .writedata12    (writedata12), 
   .writedata13    (writedata13), 
   .writedata14    (writedata14), 
   .writedata15    (writedata15), 
   .writedata2     (writedata2), 
   .writedata3     (writedata3), 
   .writedata4     (writedata4), 
   .writedata5     (writedata5), 
   .writedata6     (writedata6), 
   .writedata7     (writedata7), 
   .writedata8     (writedata8), 
   .writedata9     (writedata9)
); 

// HDL Embedded Text Block 2 cs_signal1
// Canakari blocks  0-7                                       
assign cs0 = cs_rec0 | cs_tra0;
assign cs1 = cs_rec1 | cs_tra1;
assign cs2 = cs_rec2 | cs_tra2;
assign cs3 = cs_rec3 | cs_tra3;
assign cs4 = cs_rec4 | cs_tra4;
assign cs5 = cs_rec5 | cs_tra5;
assign cs6 = cs_rec6 | cs_tra6;
assign cs7 = cs_rec7 | cs_tra7;

// Canakari blocks  8-15                                       
assign cs8  = cs_rec8  | cs_tra8;
assign cs9  = cs_rec9  | cs_tra9;
assign cs10 = cs_rec10 | cs_tra10;
assign cs11 = cs_rec11 | cs_tra11;
assign cs12 = cs_rec12 | cs_tra12;
assign cs13 = cs_rec13 | cs_tra13;
assign cs14 = cs_rec14 | cs_tra14;
assign cs15 = cs_rec15 | cs_tra15;












endmodule // canakari_top_16bus
