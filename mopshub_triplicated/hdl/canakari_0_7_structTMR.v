/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/canakari_0_7_structTMR.v                                                      *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:32                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: canakari_0_7_struct.v                                                                  *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 21:55:52                                                *
 *           File Size         : 9220                                                               *
 *           MD5 hash          : 7a8152ff5d77f394a5ea5db467551c04                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module canakari_0_7TMR(
  input wire [4:0] addressA ,
  input wire [4:0] addressB ,
  input wire [4:0] addressC ,
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  cs0A ,
  input wire  cs0B ,
  input wire  cs0C ,
  input wire  cs1A ,
  input wire  cs1B ,
  input wire  cs1C ,
  input wire  cs2A ,
  input wire  cs2B ,
  input wire  cs2C ,
  input wire  cs3A ,
  input wire  cs3B ,
  input wire  cs3C ,
  input wire  cs4A ,
  input wire  cs4B ,
  input wire  cs4C ,
  input wire  cs5A ,
  input wire  cs5B ,
  input wire  cs5C ,
  input wire  cs6A ,
  input wire  cs6B ,
  input wire  cs6C ,
  input wire  cs7A ,
  input wire  cs7B ,
  input wire  cs7C ,
  input wire  read_n0A ,
  input wire  read_n0B ,
  input wire  read_n0C ,
  input wire  read_n1A ,
  input wire  read_n1B ,
  input wire  read_n1C ,
  input wire  read_n2A ,
  input wire  read_n2B ,
  input wire  read_n2C ,
  input wire  read_n3A ,
  input wire  read_n3B ,
  input wire  read_n3C ,
  input wire  read_n4A ,
  input wire  read_n4B ,
  input wire  read_n4C ,
  input wire  read_n5A ,
  input wire  read_n5B ,
  input wire  read_n5C ,
  input wire  read_n6A ,
  input wire  read_n6B ,
  input wire  read_n6C ,
  input wire  read_n7A ,
  input wire  read_n7B ,
  input wire  read_n7C ,
  input wire  rstA ,
  input wire  rstB ,
  input wire  rstC ,
  input wire  rx0A ,
  input wire  rx0B ,
  input wire  rx0C ,
  input wire  rx1A ,
  input wire  rx1B ,
  input wire  rx1C ,
  input wire  rx2A ,
  input wire  rx2B ,
  input wire  rx2C ,
  input wire  rx3A ,
  input wire  rx3B ,
  input wire  rx3C ,
  input wire  rx4A ,
  input wire  rx4B ,
  input wire  rx4C ,
  input wire  rx5A ,
  input wire  rx5B ,
  input wire  rx5C ,
  input wire  rx6A ,
  input wire  rx6B ,
  input wire  rx6C ,
  input wire  rx7A ,
  input wire  rx7B ,
  input wire  rx7C ,
  input wire  write_n0A ,
  input wire  write_n0B ,
  input wire  write_n0C ,
  input wire  write_n1A ,
  input wire  write_n1B ,
  input wire  write_n1C ,
  input wire  write_n2A ,
  input wire  write_n2B ,
  input wire  write_n2C ,
  input wire  write_n3A ,
  input wire  write_n3B ,
  input wire  write_n3C ,
  input wire  write_n4A ,
  input wire  write_n4B ,
  input wire  write_n4C ,
  input wire  write_n5A ,
  input wire  write_n5B ,
  input wire  write_n5C ,
  input wire  write_n6A ,
  input wire  write_n6B ,
  input wire  write_n6C ,
  input wire  write_n7A ,
  input wire  write_n7B ,
  input wire  write_n7C ,
  input wire [15:0] writedata0A ,
  input wire [15:0] writedata0B ,
  input wire [15:0] writedata0C ,
  input wire [15:0] writedata1A ,
  input wire [15:0] writedata1B ,
  input wire [15:0] writedata1C ,
  input wire [15:0] writedata2A ,
  input wire [15:0] writedata2B ,
  input wire [15:0] writedata2C ,
  input wire [15:0] writedata3A ,
  input wire [15:0] writedata3B ,
  input wire [15:0] writedata3C ,
  input wire [15:0] writedata4A ,
  input wire [15:0] writedata4B ,
  input wire [15:0] writedata4C ,
  input wire [15:0] writedata5A ,
  input wire [15:0] writedata5B ,
  input wire [15:0] writedata5C ,
  input wire [15:0] writedata6A ,
  input wire [15:0] writedata6B ,
  input wire [15:0] writedata6C ,
  input wire [15:0] writedata7A ,
  input wire [15:0] writedata7B ,
  input wire [15:0] writedata7C ,
  output wire  irqsucrec0A ,
  output wire  irqsucrec0B ,
  output wire  irqsucrec0C ,
  output wire  irqsucrec1A ,
  output wire  irqsucrec1B ,
  output wire  irqsucrec1C ,
  output wire  irqsucrec2A ,
  output wire  irqsucrec2B ,
  output wire  irqsucrec2C ,
  output wire  irqsucrec3A ,
  output wire  irqsucrec3B ,
  output wire  irqsucrec3C ,
  output wire  irqsucrec4A ,
  output wire  irqsucrec4B ,
  output wire  irqsucrec4C ,
  output wire  irqsucrec5A ,
  output wire  irqsucrec5B ,
  output wire  irqsucrec5C ,
  output wire  irqsucrec6A ,
  output wire  irqsucrec6B ,
  output wire  irqsucrec6C ,
  output wire  irqsucrec7A ,
  output wire  irqsucrec7B ,
  output wire  irqsucrec7C ,
  output wire  irqsuctra0A ,
  output wire  irqsuctra0B ,
  output wire  irqsuctra0C ,
  output wire  irqsuctra1A ,
  output wire  irqsuctra1B ,
  output wire  irqsuctra1C ,
  output wire  irqsuctra2A ,
  output wire  irqsuctra2B ,
  output wire  irqsuctra2C ,
  output wire  irqsuctra3A ,
  output wire  irqsuctra3B ,
  output wire  irqsuctra3C ,
  output wire  irqsuctra4A ,
  output wire  irqsuctra4B ,
  output wire  irqsuctra4C ,
  output wire  irqsuctra5A ,
  output wire  irqsuctra5B ,
  output wire  irqsuctra5C ,
  output wire  irqsuctra6A ,
  output wire  irqsuctra6B ,
  output wire  irqsuctra6C ,
  output wire  irqsuctra7A ,
  output wire  irqsuctra7B ,
  output wire  irqsuctra7C ,
  output wire [15:0] readdata0A ,
  output wire [15:0] readdata0B ,
  output wire [15:0] readdata0C ,
  output wire [15:0] readdata1A ,
  output wire [15:0] readdata1B ,
  output wire [15:0] readdata1C ,
  output wire [15:0] readdata2A ,
  output wire [15:0] readdata2B ,
  output wire [15:0] readdata2C ,
  output wire [15:0] readdata3A ,
  output wire [15:0] readdata3B ,
  output wire [15:0] readdata3C ,
  output wire [15:0] readdata4A ,
  output wire [15:0] readdata4B ,
  output wire [15:0] readdata4C ,
  output wire [15:0] readdata5A ,
  output wire [15:0] readdata5B ,
  output wire [15:0] readdata5C ,
  output wire [15:0] readdata6A ,
  output wire [15:0] readdata6B ,
  output wire [15:0] readdata6C ,
  output wire [15:0] readdata7A ,
  output wire [15:0] readdata7B ,
  output wire [15:0] readdata7C ,
  output wire  tx0A ,
  output wire  tx0B ,
  output wire  tx0C ,
  output wire  tx1A ,
  output wire  tx1B ,
  output wire  tx1C ,
  output wire  tx2A ,
  output wire  tx2B ,
  output wire  tx2C ,
  output wire  tx3A ,
  output wire  tx3B ,
  output wire  tx3C ,
  output wire  tx4A ,
  output wire  tx4B ,
  output wire  tx4C ,
  output wire  tx5A ,
  output wire  tx5B ,
  output wire  tx5C ,
  output wire  tx6A ,
  output wire  tx6B ,
  output wire  tx6C ,
  output wire  tx7A ,
  output wire  tx7B ,
  output wire  tx7C 
);
wire [7:0] KdA;
wire [7:0] KdB;
wire [7:0] KdC;
wire [7:0] KiA;
wire [7:0] KiB;
wire [7:0] KiC;
wire [7:0] KpA;
wire [7:0] KpB;
wire [7:0] KpC;
wire en_osc_trimA;
wire en_osc_trimB;
wire en_osc_trimC;

canTMR can_0 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata0A),
    .writedataB(writedata0B),
    .writedataC(writedata0C),
    .csA(cs0A),
    .csB(cs0B),
    .csC(cs0C),
    .read_nA(read_n0A),
    .read_nB(read_n0B),
    .read_nC(read_n0C),
    .write_nA(write_n0A),
    .write_nB(write_n0B),
    .write_nC(write_n0C),
    .rxA(rx0A),
    .rxB(rx0B),
    .rxC(rx0C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata0A),
    .readdataB(readdata0B),
    .readdataC(readdata0C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra0A),
    .irqsuctraB(irqsuctra0B),
    .irqsuctraC(irqsuctra0C),
    .irqsucrecA(irqsucrec0A),
    .irqsucrecB(irqsucrec0B),
    .irqsucrecC(irqsucrec0C),
    .txA(tx0A),
    .txB(tx0B),
    .txC(tx0C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_1 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata1A),
    .writedataB(writedata1B),
    .writedataC(writedata1C),
    .csA(cs1A),
    .csB(cs1B),
    .csC(cs1C),
    .read_nA(read_n1A),
    .read_nB(read_n1B),
    .read_nC(read_n1C),
    .write_nA(write_n1A),
    .write_nB(write_n1B),
    .write_nC(write_n1C),
    .rxA(rx1A),
    .rxB(rx1B),
    .rxC(rx1C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata1A),
    .readdataB(readdata1B),
    .readdataC(readdata1C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra1A),
    .irqsuctraB(irqsuctra1B),
    .irqsuctraC(irqsuctra1C),
    .irqsucrecA(irqsucrec1A),
    .irqsucrecB(irqsucrec1B),
    .irqsucrecC(irqsucrec1C),
    .txA(tx1A),
    .txB(tx1B),
    .txC(tx1C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_2 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata2A),
    .writedataB(writedata2B),
    .writedataC(writedata2C),
    .csA(cs2A),
    .csB(cs2B),
    .csC(cs2C),
    .read_nA(read_n2A),
    .read_nB(read_n2B),
    .read_nC(read_n2C),
    .write_nA(write_n2A),
    .write_nB(write_n2B),
    .write_nC(write_n2C),
    .rxA(rx2A),
    .rxB(rx2B),
    .rxC(rx2C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata2A),
    .readdataB(readdata2B),
    .readdataC(readdata2C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra2A),
    .irqsuctraB(irqsuctra2B),
    .irqsuctraC(irqsuctra2C),
    .irqsucrecA(irqsucrec2A),
    .irqsucrecB(irqsucrec2B),
    .irqsucrecC(irqsucrec2C),
    .txA(tx2A),
    .txB(tx2B),
    .txC(tx2C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_3 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata3A),
    .writedataB(writedata3B),
    .writedataC(writedata3C),
    .csA(cs3A),
    .csB(cs3B),
    .csC(cs3C),
    .read_nA(read_n3A),
    .read_nB(read_n3B),
    .read_nC(read_n3C),
    .write_nA(write_n3A),
    .write_nB(write_n3B),
    .write_nC(write_n3C),
    .rxA(rx3A),
    .rxB(rx3B),
    .rxC(rx3C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata3A),
    .readdataB(readdata3B),
    .readdataC(readdata3C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra3A),
    .irqsuctraB(irqsuctra3B),
    .irqsuctraC(irqsuctra3C),
    .irqsucrecA(irqsucrec3A),
    .irqsucrecB(irqsucrec3B),
    .irqsucrecC(irqsucrec3C),
    .txA(tx3A),
    .txB(tx3B),
    .txC(tx3C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_4 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata4A),
    .writedataB(writedata4B),
    .writedataC(writedata4C),
    .csA(cs4A),
    .csB(cs4B),
    .csC(cs4C),
    .read_nA(read_n4A),
    .read_nB(read_n4B),
    .read_nC(read_n4C),
    .write_nA(write_n4A),
    .write_nB(write_n4B),
    .write_nC(write_n4C),
    .rxA(rx4A),
    .rxB(rx4B),
    .rxC(rx4C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata4A),
    .readdataB(readdata4B),
    .readdataC(readdata4C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra4A),
    .irqsuctraB(irqsuctra4B),
    .irqsuctraC(irqsuctra4C),
    .irqsucrecA(irqsucrec4A),
    .irqsucrecB(irqsucrec4B),
    .irqsucrecC(irqsucrec4C),
    .txA(tx4A),
    .txB(tx4B),
    .txC(tx4C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_5 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata5A),
    .writedataB(writedata5B),
    .writedataC(writedata5C),
    .csA(cs5A),
    .csB(cs5B),
    .csC(cs5C),
    .read_nA(read_n5A),
    .read_nB(read_n5B),
    .read_nC(read_n5C),
    .write_nA(write_n5A),
    .write_nB(write_n5B),
    .write_nC(write_n5C),
    .rxA(rx5A),
    .rxB(rx5B),
    .rxC(rx5C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata5A),
    .readdataB(readdata5B),
    .readdataC(readdata5C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra5A),
    .irqsuctraB(irqsuctra5B),
    .irqsuctraC(irqsuctra5C),
    .irqsucrecA(irqsucrec5A),
    .irqsucrecB(irqsucrec5B),
    .irqsucrecC(irqsucrec5C),
    .txA(tx5A),
    .txB(tx5B),
    .txC(tx5C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_6 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata6A),
    .writedataB(writedata6B),
    .writedataC(writedata6C),
    .csA(cs6A),
    .csB(cs6B),
    .csC(cs6C),
    .read_nA(read_n6A),
    .read_nB(read_n6B),
    .read_nC(read_n6C),
    .write_nA(write_n6A),
    .write_nB(write_n6B),
    .write_nC(write_n6C),
    .rxA(rx6A),
    .rxB(rx6B),
    .rxC(rx6C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata6A),
    .readdataB(readdata6B),
    .readdataC(readdata6C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra6A),
    .irqsuctraB(irqsuctra6B),
    .irqsuctraC(irqsuctra6C),
    .irqsucrecA(irqsucrec6A),
    .irqsucrecB(irqsucrec6B),
    .irqsucrecC(irqsucrec6C),
    .txA(tx6A),
    .txB(tx6B),
    .txC(tx6C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );

canTMR can_7 (
    .clockA(clkA),
    .clockB(clkB),
    .clockC(clkC),
    .resetA(rstA),
    .resetB(rstB),
    .resetC(rstC),
    .addressA(addressA),
    .addressB(addressB),
    .addressC(addressC),
    .writedataA(writedata7A),
    .writedataB(writedata7B),
    .writedataC(writedata7C),
    .csA(cs7A),
    .csB(cs7B),
    .csC(cs7C),
    .read_nA(read_n7A),
    .read_nB(read_n7B),
    .read_nC(read_n7C),
    .write_nA(write_n7A),
    .write_nB(write_n7B),
    .write_nC(write_n7C),
    .rxA(rx7A),
    .rxB(rx7B),
    .rxC(rx7C),
    .en_osc_trimA(en_osc_trimA),
    .en_osc_trimB(en_osc_trimB),
    .en_osc_trimC(en_osc_trimC),
    .KdA(KdA),
    .KdB(KdB),
    .KdC(KdC),
    .KpA(KpA),
    .KpB(KpB),
    .KpC(KpC),
    .KiA(KiA),
    .KiB(KiB),
    .KiC(KiC),
    .readdataA(readdata7A),
    .readdataB(readdata7B),
    .readdataC(readdata7C),
    .irqA(),
    .irqB(),
    .irqC(),
    .irqstatusA(),
    .irqstatusB(),
    .irqstatusC(),
    .irqsuctraA(irqsuctra7A),
    .irqsuctraB(irqsuctra7B),
    .irqsuctraC(irqsuctra7C),
    .irqsucrecA(irqsucrec7A),
    .irqsucrecB(irqsucrec7B),
    .irqsucrecC(irqsucrec7C),
    .txA(tx7A),
    .txB(tx7B),
    .txC(tx7C),
    .statedebA(),
    .statedebB(),
    .statedebC(),
    .Prescale_EN_debugA(),
    .Prescale_EN_debugB(),
    .Prescale_EN_debugC(),
    .bitstA(),
    .bitstB(),
    .bitstC(),
    .ftrimA(),
    .ftrimB(),
    .ftrimC(),
    .ready_oscA(),
    .ready_oscB(),
    .ready_oscC()
    );
assign KdA =  8'd0;
assign KdB =  8'd0;
assign KdC =  8'd0;
assign KiA =  8'd0;
assign KiB =  8'd0;
assign KiC =  8'd0;
assign KpA =  8'd0;
assign KpB =  8'd0;
assign KpC =  8'd0;
assign en_osc_trimA =  1'b0;
assign en_osc_trimB =  1'b0;
assign en_osc_trimC =  1'b0;
endmodule
