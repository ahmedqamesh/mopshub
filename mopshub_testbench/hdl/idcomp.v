`resetall
`timescale 1ns/10ps
module idcomp(
  // input ports
   input   wire    [10:0]  idnew, 
   input   wire    [10:0]  idprev, 
   input   wire    [7:0]   sdocmd, 
   input   wire    [7:0]   sdocmdnew,  // SDO command of the new incoming message
   // Output ports
   output  wire             chksdocmd, 
   output  wire             genrst, 
   output  wire             highpr, 
   output  wire             sdopr
);


//tmrg default triplicate
//tmrg tmr_error false 

reg chksdocmdreg;
reg genrstreg;
reg highprreg;
reg sdoprreg;

assign chksdocmd = chksdocmdreg;
assign genrst    = genrstreg;
assign highpr    = highprreg;
assign sdopr     = sdoprreg;



//***Combinational block to compare the priortiy of the message being processed and the newly arrived message****
//************************************************************************************
// Internal Declarations
always@(*)
begin 
   if(idnew == 11'h000)
    begin 
     genrstreg      = 1'b1;
     highprreg      = 1'b0;
     chksdocmdreg   = 1'b0;
    end
    
   else if (idnew < idprev) 
    begin 
      genrstreg      = 1'b0;
      highprreg      = 1'b1;
      chksdocmdreg   = 1'b0;
    end
   else if (idnew == idprev)
    begin 
     genrstreg      = 1'b0;
     highprreg      = 1'b0;
     chksdocmdreg   = 1'b1;
    end 
   else
    begin 
     genrstreg      = 1'b0;
     highprreg      = 1'b0;
     chksdocmdreg   = 1'b0;
    end     
end

//****Combinational block to check the priority of the read and write operation in-case of SDO. 
//In this case both the message being processed and the newly received message 
//have the same ID but different operation i.e read/write and priority can be selected for any one of them.
//**************************************************************************************************************************** 


always@(*)
begin 
    sdoprreg    = 1'b0;
  if(sdocmdnew >= sdocmd)  
    sdoprreg    = 1'b0;
  else if (sdocmdnew < sdocmd)
    sdoprreg    = 1'b1;    
end 







endmodule
