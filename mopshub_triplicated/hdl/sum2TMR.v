/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/sum2TMR.v                                                                     *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:56                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: sum2.v                                                                                 *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 4557                                                               *
 *           MD5 hash          : 2bf9520810605ad23c7741ace145e3f3                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module sum2TMR(
  input wire [3:0] countA ,
  input wire [3:0] countB ,
  input wire [3:0] countC ,
  input wire [2:0] tseg1orgA ,
  input wire [2:0] tseg1orgB ,
  input wire [2:0] tseg1orgC ,
  input wire [4:0] tseg1mplA ,
  input wire [4:0] tseg1mplB ,
  input wire [4:0] tseg1mplC ,
  input wire [2:0] tseg2A ,
  input wire [2:0] tseg2B ,
  input wire [2:0] tseg2C ,
  input wire [2:0] sjwA ,
  input wire [2:0] sjwB ,
  input wire [2:0] sjwC ,
  output reg  notnullA ,
  output reg  notnullB ,
  output reg  notnullC ,
  output reg  gtsjwp1A ,
  output reg  gtsjwp1B ,
  output reg  gtsjwp1C ,
  output reg  gttseg1p1A ,
  output reg  gttseg1p1B ,
  output reg  gttseg1p1C ,
  output reg  cpsgetseg1ptseg2p2A ,
  output reg  cpsgetseg1ptseg2p2B ,
  output reg  cpsgetseg1ptseg2p2C ,
  output reg  cetseg1ptseg2p1A ,
  output reg  cetseg1ptseg2p1B ,
  output reg  cetseg1ptseg2p1C ,
  output reg  countesmpltimeA ,
  output reg  countesmpltimeB ,
  output reg  countesmpltimeC ,
  output reg [4:0] tseg1p1psjwA ,
  output reg [4:0] tseg1p1psjwB ,
  output reg [4:0] tseg1p1psjwC ,
  output reg [4:0] tseg1pcountA ,
  output reg [4:0] tseg1pcountB ,
  output reg [4:0] tseg1pcountC 
);
reg  [2:0] tseg1m1A ;
reg  [2:0] tseg1m1B ;
reg  [2:0] tseg1m1C ;
reg  [4:0] tseg1p1mplA ;
reg  [4:0] tseg1p1mplB ;
reg  [4:0] tseg1p1mplC ;
reg  [3:0] tseg1p1orgA ;
reg  [3:0] tseg1p1orgB ;
reg  [3:0] tseg1p1orgC ;
reg  [3:0] sjwp1A ;
reg  [3:0] sjwp1B ;
reg  [3:0] sjwp1C ;
reg  [4:0] countpsjwA ;
reg  [4:0] countpsjwB ;
reg  [4:0] countpsjwC ;
reg  [4:0] tseg1ptseg2p1A ;
reg  [4:0] tseg1ptseg2p1B ;
reg  [4:0] tseg1ptseg2p1C ;
reg  [4:0] tseg1ptseg2p2A ;
reg  [4:0] tseg1ptseg2p2B ;
reg  [4:0] tseg1ptseg2p2C ;

always @( tseg1mplA )
  begin
    tseg1p1mplA <= tseg1mplA+1;
  end

always @( tseg1mplB )
  begin
    tseg1p1mplB <= tseg1mplB+1;
  end

always @( tseg1mplC )
  begin
    tseg1p1mplC <= tseg1mplC+1;
  end

always @( tseg1orgA )
  begin
    tseg1p1orgA <= tseg1orgA+1;
  end

always @( tseg1orgB )
  begin
    tseg1p1orgB <= tseg1orgB+1;
  end

always @( tseg1orgC )
  begin
    tseg1p1orgC <= tseg1orgC+1;
  end

always @( tseg1orgA )
  begin
    if (tseg1orgA>0)
      tseg1m1A <= tseg1orgA-1;
    else
      tseg1m1A <= 0;
  end

always @( tseg1orgB )
  begin
    if (tseg1orgB>0)
      tseg1m1B <= tseg1orgB-1;
    else
      tseg1m1B <= 0;
  end

always @( tseg1orgC )
  begin
    if (tseg1orgC>0)
      tseg1m1C <= tseg1orgC-1;
    else
      tseg1m1C <= 0;
  end

always @( sjwA )
  begin
    sjwp1A <= sjwA+1;
  end

always @( sjwB )
  begin
    sjwp1B <= sjwB+1;
  end

always @( sjwC )
  begin
    sjwp1C <= sjwC+1;
  end

always @( countA or sjwA )
  begin
    countpsjwA <= countA+sjwA;
  end

always @( countB or sjwB )
  begin
    countpsjwB <= countB+sjwB;
  end

always @( countC or sjwC )
  begin
    countpsjwC <= countC+sjwC;
  end

always @( tseg1p1mplA or tseg2A )
  begin
    tseg1ptseg2p1A <= tseg1p1mplA+{2'b00,tseg2A};
  end

always @( tseg1p1mplB or tseg2B )
  begin
    tseg1ptseg2p1B <= tseg1p1mplB+{2'b00,tseg2B};
  end

always @( tseg1p1mplC or tseg2C )
  begin
    tseg1ptseg2p1C <= tseg1p1mplC+{2'b00,tseg2C};
  end

always @( tseg1ptseg2p1A )
  begin
    tseg1ptseg2p2A <= tseg1ptseg2p1A+1;
  end

always @( tseg1ptseg2p1B )
  begin
    tseg1ptseg2p2B <= tseg1ptseg2p1B+1;
  end

always @( tseg1ptseg2p1C )
  begin
    tseg1ptseg2p2C <= tseg1ptseg2p1C+1;
  end

always @( tseg1m1A or countA )
  begin
    tseg1pcountA <= tseg1m1A+countA;
  end

always @( tseg1m1B or countB )
  begin
    tseg1pcountB <= tseg1m1B+countB;
  end

always @( tseg1m1C or countC )
  begin
    tseg1pcountC <= tseg1m1C+countC;
  end

always @( tseg1p1orgA or sjwA )
  begin
    tseg1p1psjwA <= tseg1p1orgA+sjwA;
  end

always @( tseg1p1orgB or sjwB )
  begin
    tseg1p1psjwB <= tseg1p1orgB+sjwB;
  end

always @( tseg1p1orgC or sjwC )
  begin
    tseg1p1psjwC <= tseg1p1orgC+sjwC;
  end

always @( countA )
  begin
    if (countA!=0)
      notnullA <= 1'b1;
    else
      notnullA <= 1'b0;
  end

always @( countB )
  begin
    if (countB!=0)
      notnullB <= 1'b1;
    else
      notnullB <= 1'b0;
  end

always @( countC )
  begin
    if (countC!=0)
      notnullC <= 1'b1;
    else
      notnullC <= 1'b0;
  end

always @( countA or sjwp1A )
  begin
    if (countA>sjwp1A)
      gtsjwp1A <= 1'b1;
    else
      gtsjwp1A <= 1'b0;
  end

always @( countB or sjwp1B )
  begin
    if (countB>sjwp1B)
      gtsjwp1B <= 1'b1;
    else
      gtsjwp1B <= 1'b0;
  end

always @( countC or sjwp1C )
  begin
    if (countC>sjwp1C)
      gtsjwp1C <= 1'b1;
    else
      gtsjwp1C <= 1'b0;
  end

always @( countA or tseg1p1mplA )
  begin
    if ({1'b0,countA}>tseg1p1mplA)
      gttseg1p1A <= 1'b1;
    else
      gttseg1p1A <= 1'b0;
  end

always @( countB or tseg1p1mplB )
  begin
    if ({1'b0,countB}>tseg1p1mplB)
      gttseg1p1B <= 1'b1;
    else
      gttseg1p1B <= 1'b0;
  end

always @( countC or tseg1p1mplC )
  begin
    if ({1'b0,countC}>tseg1p1mplC)
      gttseg1p1C <= 1'b1;
    else
      gttseg1p1C <= 1'b0;
  end

always @( countpsjwA or tseg1ptseg2p2A )
  begin
    if (countpsjwA>=tseg1ptseg2p2A)
      cpsgetseg1ptseg2p2A <= 1'b1;
    else
      cpsgetseg1ptseg2p2A <= 1'b0;
  end

always @( countpsjwB or tseg1ptseg2p2B )
  begin
    if (countpsjwB>=tseg1ptseg2p2B)
      cpsgetseg1ptseg2p2B <= 1'b1;
    else
      cpsgetseg1ptseg2p2B <= 1'b0;
  end

always @( countpsjwC or tseg1ptseg2p2C )
  begin
    if (countpsjwC>=tseg1ptseg2p2C)
      cpsgetseg1ptseg2p2C <= 1'b1;
    else
      cpsgetseg1ptseg2p2C <= 1'b0;
  end

always @( countA or tseg1ptseg2p1A )
  begin
    if ({1'b0,countA}==tseg1ptseg2p1A)
      cetseg1ptseg2p1A <= 1'b1;
    else
      cetseg1ptseg2p1A <= 1'b0;
  end

always @( countB or tseg1ptseg2p1B )
  begin
    if ({1'b0,countB}==tseg1ptseg2p1B)
      cetseg1ptseg2p1B <= 1'b1;
    else
      cetseg1ptseg2p1B <= 1'b0;
  end

always @( countC or tseg1ptseg2p1C )
  begin
    if ({1'b0,countC}==tseg1ptseg2p1C)
      cetseg1ptseg2p1C <= 1'b1;
    else
      cetseg1ptseg2p1C <= 1'b0;
  end

always @( countA or tseg1p1mplA )
  begin
    if ({1'b0,countA}==tseg1p1mplA)
      countesmpltimeA <= 1'b1;
    else
      countesmpltimeA <= 1'b0;
  end

always @( countB or tseg1p1mplB )
  begin
    if ({1'b0,countB}==tseg1p1mplB)
      countesmpltimeB <= 1'b1;
    else
      countesmpltimeB <= 1'b0;
  end

always @( countC or tseg1p1mplC )
  begin
    if ({1'b0,countC}==tseg1p1mplC)
      countesmpltimeC <= 1'b1;
    else
      countesmpltimeC <= 1'b0;
  end
endmodule

