`resetall
`timescale 1ns/10ps
module CANAkari_interface( 
   // Port Declarations
   input   wire            abort, 
   input   wire            clk,              // posedge
   input   wire    [15:0]  data_init,        // Initialization data for canakari registers coming from the initialization block 
   input   wire    [75:0]  data_tra_mes,     // complete CAN message to be written on the CAN bus 
   input   wire            id_comp,          // signal to start ID comparison 
   input   wire    [10:0]  idprev, 
   input   wire            init,             // start initialization 
   input   wire    [15:0]  read_can,         // data read from Canakari
   input   wire            reset_irq_can,    // reset interrupt from Canakari
   input   wire            rst,              // lowactive
   input   wire    [7:0]   sdocmd,           // SDO command of the message being processed 
   input   wire            send_mes,         // start sending message 
   input   wire            start_read,       // start reading canakari registers 
   input   wire            start_write,      // start writing Canakari register 
   input   wire            timeoutrst,       // gobal timeout reset to get back the state machines in a known state
   output  wire    [4:0]   addr_can,         // addr given to the initialization block 
   output  wire            cs_can,           // chip select signal for Canakari 
   output  wire            en_rec_reg, 
   output  wire            end_init,         // signal to bridge state machine to end initialization phase 
   output  wire            end_read,         // signal to end read phase 
   output  wire            end_write,        // signal to end write phase 
   output  wire            highprio, 
   output  wire            idcmpdone, 
   output  wire            lowprio, 
   output  wire            read_sig_can_n,   // low active signal to read data from one of the registers of Cankari 
   output  wire            rstid, 
   output  wire    [5:0]   statedebcan, 
   output  wire    [15:0]  write_can,        // data to be written to Canakari 
   output  wire            write_sig_can_n   // low active signal to write data into one of the registers of Canakari 
);

//tmrg default triplicate
//tmrg tmr_error false 
// Internal Declarations


// Local declarations

// Internal signal declarations
wire         chksdocmd;
wire         genrst;
wire         highpr;
wire  [10:0] idnew;
wire         initi;       // initial signal from interface state machine to interface block 
wire  [7:0]  sdocmdnew;
wire         sdopr;


// Instances 
caninterface caninterface0( 
   .clk          (clk), 
   .rst          (rst), 
   .addr         (addr_can), 
   .data_init    (data_init), 
   .data_tra_mes (data_tra_mes), 
   .initi        (initi), 
   .read         (read_sig_can_n), 
   .read_can     (read_can), 
   .write        (write_sig_can_n), 
   .write_can    (write_can), 
   .sdocmdnew    (sdocmdnew), 
   .id_comp      (id_comp), 
   .newid        (idnew)
); 

idcomp idcomp0( 
   .chksdocmd (chksdocmd), 
   .genrst    (genrst), 
   .highpr    (highpr), 
   .idnew     (idnew), 
   .idprev    (idprev), 
   .sdocmd    (sdocmd), 
   .sdocmdnew (sdocmdnew), 
   .sdopr     (sdopr)
); 

interfaceSM interfaceSM0( 
   .abort         (abort), 
   .chksdocmd     (chksdocmd), 
   .clk           (clk), 
   .genrst        (genrst), 
   .highpr        (highpr), 
   .id_comp       (id_comp), 
   .init          (init), 
   .reset_irq_can (reset_irq_can), 
   .rst           (rst), 
   .sdopr         (sdopr), 
   .send_mes      (send_mes), 
   .start_read    (start_read), 
   .start_write   (start_write), 
   .timeoutrst    (timeoutrst), 
   .addr          (addr_can), 
   .cs_can        (cs_can), 
   .en_rec_reg    (en_rec_reg), 
   .end_init      (end_init), 
   .end_read      (end_read), 
   .end_write     (end_write), 
   .highprio      (highprio), 
   .idcmpdone     (idcmpdone), 
   .initi         (initi), 
   .lowprio       (lowprio), 
   .read          (read_sig_can_n), 
   .rstid         (rstid), 
   .statedeb      (statedebcan), 
   .write         (write_sig_can_n)
); 


endmodule // CANAkari_interface