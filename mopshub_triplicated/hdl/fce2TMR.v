/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/fce2TMR.v                                                                     *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:35                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: fce2.v                                                                                 *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-29 13:49:21                                                *
 *           File Size         : 4383                                                               *
 *           MD5 hash          : f56c99a6f4baba851292800a76cf7ec0                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module fce2TMR(
  input wire  clockA ,
  input wire  clockB ,
  input wire  clockC ,
  input wire  resetA ,
  input wire  resetB ,
  input wire  resetC ,
  input wire  inconerecA ,
  input wire  inconerecB ,
  input wire  inconerecC ,
  input wire  incegtrecA ,
  input wire  incegtrecB ,
  input wire  incegtrecC ,
  input wire  incegttraA ,
  input wire  incegttraB ,
  input wire  incegttraC ,
  input wire  decrecA ,
  input wire  decrecB ,
  input wire  decrecC ,
  input wire  dectraA ,
  input wire  dectraB ,
  input wire  dectraC ,
  input wire  elevrecbA ,
  input wire  elevrecbB ,
  input wire  elevrecbC ,
  output wire  erroractiveA ,
  output wire  erroractiveB ,
  output wire  erroractiveC ,
  output wire  errorpassiveA ,
  output wire  errorpassiveB ,
  output wire  errorpassiveC ,
  output wire  busoffA ,
  output wire  busoffB ,
  output wire  busoffC ,
  output wire  warnsigA ,
  output wire  warnsigB ,
  output wire  warnsigC ,
  output wire  irqsigA ,
  output wire  irqsigB ,
  output wire  irqsigC ,
  output wire [7:0] tecfceA ,
  output wire [7:0] tecfceB ,
  output wire [7:0] tecfceC ,
  output wire [7:0] recfceA ,
  output wire [7:0] recfceB ,
  output wire [7:0] recfceC 
);
wire rec_ge96_iA;
wire rec_ge96_iB;
wire rec_ge96_iC;
wire rec_ge128_iA;
wire rec_ge128_iB;
wire rec_ge128_iC;
wire rec_lt96_iA;
wire rec_lt96_iB;
wire rec_lt96_iC;
wire tec_lt96_iA;
wire tec_lt96_iB;
wire tec_lt96_iC;
wire tec_ge96_iA;
wire tec_ge96_iB;
wire tec_ge96_iC;
wire tec_ge128_iA;
wire tec_ge128_iB;
wire tec_ge128_iC;
wire tec_ge256_iA;
wire tec_ge256_iB;
wire tec_ge256_iC;
wire erb_eq128_iA;
wire erb_eq128_iB;
wire erb_eq128_iC;
wire resetcount_iA;
wire resetcount_iB;
wire resetcount_iC;
wire resetsigA;
wire resetsigB;
wire resetsigC;
assign resetsigA =  resetA&resetcount_iA;
assign resetsigB =  resetB&resetcount_iB;
assign resetsigC =  resetC&resetcount_iC;

faultfsm2TMR fsm (
    .clockA(clockA),
    .clockB(clockB),
    .clockC(clockC),
    .resetA(resetA),
    .resetB(resetB),
    .resetC(resetC),
    .rec_lt96A(rec_lt96_iA),
    .rec_lt96B(rec_lt96_iB),
    .rec_lt96C(rec_lt96_iC),
    .rec_ge96A(rec_ge96_iA),
    .rec_ge96B(rec_ge96_iB),
    .rec_ge96C(rec_ge96_iC),
    .rec_ge128A(rec_ge128_iA),
    .rec_ge128B(rec_ge128_iB),
    .rec_ge128C(rec_ge128_iC),
    .tec_lt96A(tec_lt96_iA),
    .tec_lt96B(tec_lt96_iB),
    .tec_lt96C(tec_lt96_iC),
    .tec_ge96A(tec_ge96_iA),
    .tec_ge96B(tec_ge96_iB),
    .tec_ge96C(tec_ge96_iC),
    .tec_ge128A(tec_ge128_iA),
    .tec_ge128B(tec_ge128_iB),
    .tec_ge128C(tec_ge128_iC),
    .tec_ge256A(tec_ge256_iA),
    .tec_ge256B(tec_ge256_iB),
    .tec_ge256C(tec_ge256_iC),
    .erb_eq128A(erb_eq128_iA),
    .erb_eq128B(erb_eq128_iB),
    .erb_eq128C(erb_eq128_iC),
    .resetcountA(resetcount_iA),
    .resetcountB(resetcount_iB),
    .resetcountC(resetcount_iC),
    .erroractiveA(erroractiveA),
    .erroractiveB(erroractiveB),
    .erroractiveC(erroractiveC),
    .errorpassiveA(errorpassiveA),
    .errorpassiveB(errorpassiveB),
    .errorpassiveC(errorpassiveC),
    .busoffA(busoffA),
    .busoffB(busoffB),
    .busoffC(busoffC),
    .warnsigA(warnsigA),
    .warnsigB(warnsigB),
    .warnsigC(warnsigC),
    .irqsigA(irqsigA),
    .irqsigB(irqsigB),
    .irqsigC(irqsigC)
    );

rec2TMR rec_count (
    .resetA(resetsigA),
    .resetB(resetsigB),
    .resetC(resetsigC),
    .clockA(clockA),
    .clockB(clockB),
    .clockC(clockC),
    .inconerecA(inconerecA),
    .inconerecB(inconerecB),
    .inconerecC(inconerecC),
    .incegtrecA(incegtrecA),
    .incegtrecB(incegtrecB),
    .incegtrecC(incegtrecC),
    .decrecA(decrecA),
    .decrecB(decrecB),
    .decrecC(decrecC),
    .rec_lt96A(rec_lt96_iA),
    .rec_lt96B(rec_lt96_iB),
    .rec_lt96C(rec_lt96_iC),
    .rec_ge96A(rec_ge96_iA),
    .rec_ge96B(rec_ge96_iB),
    .rec_ge96C(rec_ge96_iC),
    .rec_ge128A(rec_ge128_iA),
    .rec_ge128B(rec_ge128_iB),
    .rec_ge128C(rec_ge128_iC),
    .reccountA(recfceA),
    .reccountB(recfceB),
    .reccountC(recfceC)
    );

tec2TMR tec_count (
    .resetA(resetsigA),
    .resetB(resetsigB),
    .resetC(resetsigC),
    .clockA(clockA),
    .clockB(clockB),
    .clockC(clockC),
    .incegttraA(incegttraA),
    .incegttraB(incegttraB),
    .incegttraC(incegttraC),
    .dectraA(dectraA),
    .dectraB(dectraB),
    .dectraC(dectraC),
    .tec_lt96A(tec_lt96_iA),
    .tec_lt96B(tec_lt96_iB),
    .tec_lt96C(tec_lt96_iC),
    .tec_ge96A(tec_ge96_iA),
    .tec_ge96B(tec_ge96_iB),
    .tec_ge96C(tec_ge96_iC),
    .tec_ge128A(tec_ge128_iA),
    .tec_ge128B(tec_ge128_iB),
    .tec_ge128C(tec_ge128_iC),
    .tec_ge256A(tec_ge256_iA),
    .tec_ge256B(tec_ge256_iB),
    .tec_ge256C(tec_ge256_iC),
    .teccountA(tecfceA),
    .teccountB(tecfceB),
    .teccountC(tecfceC)
    );

erbcount2TMR erb_count (
    .clockA(clockA),
    .clockB(clockB),
    .clockC(clockC),
    .resetA(resetsigA),
    .resetB(resetsigB),
    .resetC(resetsigC),
    .elevrecbA(elevrecbA),
    .elevrecbB(elevrecbB),
    .elevrecbC(elevrecbC),
    .erb_eq128A(erb_eq128_iA),
    .erb_eq128B(erb_eq128_iB),
    .erb_eq128C(erb_eq128_iC)
    );
endmodule
