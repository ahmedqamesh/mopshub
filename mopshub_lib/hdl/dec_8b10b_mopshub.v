// Chuck Benz, Hollis, NH   Copyright (c)2002
//
// The information and description contained herein is the
// property of Chuck Benz.
//
// Permission is granted for any reuse of this information
// and description as long as this copyright notice is
// preserved.  Modifications may be made as long as this
// notice is preserved.

// per Widmer and Franaszek
// Changed to VHDL by Frans Schreuder, original verilog code: http://asics.chuckbenz.com/#My_open_source_8b10b_encoderdecoder
// Translated back into Verilog by Lucas Schreiter

module dec_8b10b_mopshub (
		input  rst,
		input  clk,
		input  [9:0] datain, // (10-bit input data to be decoded)
		input  datain_valid,
		input  [7:0] Kchar_comma,	
		output ko, //comma alignment signal, 
		output [7:0] dataout,
		output code_err, //code error flag
		output disp_err //disparity error flag
	);

	reg dispin;

	wire ai = datain[9];
	wire bi = datain[8];
	wire ci = datain[7];
	wire di = datain[6];
	wire ei = datain[5];
	wire ii = datain[4];
	wire fi = datain[3];
	wire gi = datain[2];
	wire hi = datain[1];
	wire ji = datain[0];

	wire aeqb = (ai & bi) | (!ai & !bi);
	wire ceqd = (ci & di) | (!ci & !di);
	wire p22 = (ai & bi & !ci & !di) | (ci & di & !ai & !bi) | (!aeqb & !ceqd);
	wire p13 = (!aeqb & !ci & !di) | ( !ceqd & !ai & !bi);
	wire p31 = (!aeqb & ci & di) | ( !ceqd & ai & bi);
	
	wire disp6a = p31 | (p22 & dispin) ; // pos disp if p22 and was pos, or p31.
	wire disp6a2 = p31 & dispin ;  // disp is ++ after 4 bits
	wire disp6a0 = p13 & !dispin ; // -- disp after 4 bits
  wire disp6b = (((ei & ii & !disp6a0) | (disp6a & (ei | ii)) | disp6a2 | (ei & ii & di)) & (ei | ii | di));
	
	// The 5B/6B decoding special cases where ABCDE != abcde
	wire p22bceeqi = p22 & bi & ci & (ei == ii);
	wire p22bncneeqi = p22 & !bi & !ci & (ei == ii);
	wire p13in = p13 & !ii;
	wire p31i = p31 & ii;
	wire p13dei = p13 & di & ei & ii;
	wire p22aceeqi = p22 & ai & ci & (ei == ii);
	wire p22ancneeqi = p22 & !ai & !ci & (ei == ii);
	wire p13en = p13 & !ei;
	wire anbnenin = !ai & !bi & !ei & !ii;
	wire abei = ai & bi & ei & ii;
	wire cndnenin = !ci & !di & !ei & !ii;
	
	wire compa = p22bncneeqi | p31i | p13dei | p22ancneeqi | p13en | abei | cndnenin;
	wire compb = p22bceeqi | p31i | p13dei | p22aceeqi | p13en | abei | cndnenin;
	wire compc = p22bceeqi | p31i | p13dei | p22ancneeqi | p13en | anbnenin | cndnenin;
	wire compd = p22bncneeqi | p31i | p13dei | p22aceeqi | p13en | abei | cndnenin;
	wire compe = p22bncneeqi | p13in | p13dei | p22ancneeqi | p13en | anbnenin | cndnenin;
	
	wire ao = ai ^ compa;
	wire bo = bi ^ compb;
	wire co = ci ^ compc;
	wire do = di ^ compd;
	wire eo = ei ^ compe;

	wire feqg = (fi & gi) | (!fi & !gi);
	wire heqj = (hi & ji) | (!hi & !ji);
	wire fghj22 = (fi & gi & !hi & !ji) | (!fi & !gi & hi & ji) | ( !feqg & !heqj);
	wire fghjp13 = ( !feqg & !hi & !ji) | ( !heqj & !fi & !gi);
	wire fghjp31 = ( (!feqg) & hi & ji) | ( !heqj & fi & gi);
	wire dispout = (fghjp31 | (disp6b & fghj22) | (hi & ji)) & (hi | ji);

	wire ko_s = ((ci & di & ei & ii) | 
				 (!ci & !di & !ei & !ii) | 
				 (p13 & !ei & ii & gi & hi & ji) |
				 (p31 & ei & !ii & !gi & !hi & !ji)
				);

	// k28 with positive disp into fghi - .1, .2, .5, and .6 special cases
	wire k28p = !(ci | di | ei | ii);
	wire fo = 	(ji & !fi & (hi | !gi | k28p)) |
				(fi & !ji & (!hi | gi | !k28p)) |
				(k28p & gi & hi) |
				(!k28p & !gi & !hi);
				
	wire go = 	(ji & !fi & (hi | !gi | !k28p)) |
				(fi & !ji & (!hi | gi |k28p)) |
				(!k28p & gi & hi) |
				(k28p & !gi & !hi);
				
	wire ho = 	((ji ^ hi) & !((!fi & gi & !hi & ji & !k28p) |
				 (!fi & gi & hi & !ji & k28p) | 
				 (fi & !gi & !hi & ji & !k28p) |
				 (fi & !gi & hi & !ji & k28p))
				) | (!fi & gi & hi & ji) | (fi & !gi & !hi & !ji);
	
	wire disp6p = (p31 & (ei | ii)) | (p22 & ei & ii);
	wire disp6n = (p13 & ! (ei & ii)) | (p22 & !ei & !ii);
	wire disp4p = fghjp31;
	wire disp4n = fghjp13;
	
	reg disp_err_r;
	reg [7:0] dataout_r;
	reg ko_r;
	reg code_err_r;
	
	always @ (posedge clk) begin : output_proc
		if (!rst) begin
			dispin <= 0;
			disp_err_r <= 0;
			dataout_r <= Kchar_comma;
			ko_r <= 0;
			code_err_r <= 0;
		end else if (datain_valid == 1) begin
			// Rewritten code_err calculation after reading A DC-Balanced, Partitioned-Block, 8B/ 1 OB Transmission Code (A. X. Widmer and P. A. Franaszek)
            code_err_r <=	((ai & bi & ci & di) | (!(ai | bi | ci | di))) |
							(p13 & (!ei) & (!ii)) | (p31 & ei & ii) |
							((fi & gi & hi & ji) | (!(fi | gi | hi | ji))) |
							((ei & ii & fi & gi & hi) | (!(ei | ii | fi | gi | hi))) |
							(((!ii) &  ei & gi & hi & ji) | (!((!ii) |  ei | gi | hi | ji))) |
							((((!ei) & (!ii) & gi & hi & ji) | (!((!ei) | (!ii) | gi | hi | ji))) &
							 (!((ci & di & ei) | (!(ci | di | ei))))
							) |
							((!p31) & ei & (!ii) & (!gi) & (!hi) & (!ji)) |
							((!p13) & (!ei) & ii & gi & hi & ji);
                        
            disp_err_r <= 	((dispin & disp6p) | (disp6n & !dispin) |
							 (dispin & !disp6n & fi & gi) |
							 (dispin & ai & bi & ci) |
							 (dispin & !disp6n & disp4p) |
							 (!dispin & !disp6p & !fi & !gi) |
							 (!dispin & !ai & !bi & !ci) |
							 (!dispin & !disp6p & disp4n) |
							 (disp6p & disp4p) | (disp6n & disp4n)
							);
            dispin <= dispout;
            dataout_r <= {ho, go, fo, eo, do, co, bo, ao};
            ko_r <= ko_s;			
		end
	end
	
	assign disp_err = disp_err_r;
	assign dataout = dataout_r;
	assign ko = ko_r;
	assign code_err = code_err_r;
	
endmodule