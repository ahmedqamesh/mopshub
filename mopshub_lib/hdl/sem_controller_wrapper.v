`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:14:05 PM
// Design Name: 
// Module Name: sem_controller_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sem_controller_wrapper(
  input       wire   reset,
  input      wire   clk_icap,
  //output      wire   monitor_tx_0,
 // output      wire   monitor_txwrite,
  //output      wire  [7:0] monitor_txdata,
  //input       wire   monitor_rx_0,
  
  output      wire   status_heartbeat,
  output      wire   status_initialization,
  output      wire   status_observation,
  output      wire   status_correction,
  output      wire   status_classification,
  output      wire   status_injection,
  output      wire   status_essential,
  output      wire   status_uncorrectable
  
    );
    
    ///////////////////////////////////////////////////////////////////////////
  // Declare signals.
  ///////////////////////////////////////////////////////////////////////////
  wire        status_heartbeat_internal;
  wire        status_initialization_internal;
  wire        status_observation_internal;
  wire        status_correction_internal;
  wire        status_classification_internal;
  wire        status_injection_internal;
  wire        status_essential_internal;
  wire        status_uncorrectable_internal;
   
  wire        fecc_crcerr;
  wire        fecc_eccerr;
  wire        fecc_eccerrsingle;
  wire        fecc_syndromevalid;
  wire [12:0] fecc_syndrome;
  wire [25:0] fecc_far;
  wire  [4:0] fecc_synbit;
  wire  [6:0] fecc_synword;
  
  wire [31:0] icap_o;
  wire [31:0] icap_i;
  wire        icap_csib;
  wire        icap_rdwrb;
  wire        icap_unused;
  wire        icap_grant;

  wire        monitor_txfull;
  wire  [7:0] monitor_rxdata;
  wire        monitor_rxempty;
  wire        monitor_rxread;
  wire        monitor_tx_0;
  wire        monitor_txwrite;
  wire  [7:0] monitor_txdata;
  wire        monitor_rx_0;
  
  assign icap_grant = 1'b1;
  assign status_heartbeat = status_heartbeat_internal;
  assign status_initialization = status_initialization_internal;
  assign status_observation = status_observation_internal;
  assign status_correction = status_correction_internal;
  assign status_classification = status_classification_internal;
  assign status_injection = status_injection_internal;
  assign status_essential = status_essential_internal;
  assign status_uncorrectable = status_uncorrectable_internal;
   
  ///////////////////////////////////////////////////////////////////////////
  // The controller sub-module is the kernel of the soft error mitigation
  // solution.  The port list is dynamic based on the IP core options.
  ///////////////////////////////////////////////////////////////////////////
   
  sem_0 sem_0_sem_controller0 (
   //Status interface
    .status_heartbeat(status_heartbeat_internal),
    .status_initialization(status_initialization_internal),
    .status_observation(status_observation_internal),
    .status_correction(status_correction_internal),
    .status_classification(status_classification_internal),
    .status_injection(status_injection_internal),
    .status_essential(status_essential_internal),
    .status_uncorrectable(status_uncorrectable_internal),
    //Monitor Interface
    .monitor_txdata(monitor_txdata),
    .monitor_txwrite(monitor_txwrite),
    .monitor_txfull(monitor_txfull),
    .monitor_rxdata(monitor_rxdata),
    .monitor_rxread(monitor_rxread),
    .monitor_rxempty(monitor_rxempty),
    //Error inject interface
    //.inject_strobe(),
    //.inject_address(),
    //FRAME_ECC Interface
    .fecc_crcerr(fecc_crcerr),
    .fecc_eccerr(fecc_eccerr),
    .fecc_eccerrsingle(fecc_eccerrsingle),
    .fecc_syndromevalid(fecc_syndromevalid),
    .fecc_syndrome(fecc_syndrome),
    .fecc_far(fecc_far),
    .fecc_synbit(fecc_synbit),
    .fecc_synword(fecc_synword),
    //ICAP Interface
    .icap_o(icap_o),
    .icap_i(icap_i),
    .icap_csib(icap_csib),
    .icap_rdwrb(icap_rdwrb),
    .icap_clk(clk_icap),
    .icap_request(icap_unused),
    .icap_grant(icap_grant)
    );
 
  ///////////////////////////////////////////////////////////////////////////
  // The cfg sub-module contains the device specific primitives to access
  // the internal configuration port and the frame crc/ecc status signals.
  ///////////////////////////////////////////////////////////////////////////

  sem_0_sem_cfg sem_0_sem_cfg0 (
    //Fram ECC Interface
    .fecc_crcerr(fecc_crcerr),
    .fecc_eccerr(fecc_eccerr),
    .fecc_eccerrsingle(fecc_eccerrsingle),
    .fecc_syndromevalid(fecc_syndromevalid),
    .fecc_syndrome(fecc_syndrome),
    .fecc_far(fecc_far),
    .fecc_synbit(fecc_synbit),
    .fecc_synword(fecc_synword),
    // ICAP Interface
    .icap_o(icap_o),
    .icap_i(icap_i),
    .icap_csib(icap_csib),
    .icap_rdwrb(icap_rdwrb),
    .icap_clk(clk_icap)
    );
 
  ///////////////////////////////////////////////////////////////////////////
  // The mon sub-module contains a UART for communication purposes.
  //The Monitor Interface provides a mechanism for the user to interact with the SEM Controller.
  //The controller is designed to read commands and write status information to this interface as ASCII strings. The
  //status and command capability of the Monitor Interface is a superset of the Status Interface and the Error Injection
  //Interface.

  ///////////////////////////////////////////////////////////////////////////

  sem_0_sem_mon sem_0_sem_mon0 (
    .icap_clk(clk_icap),
    .monitor_tx(monitor_tx_0),
    .monitor_rx(monitor_rx_0),
    .monitor_txdata(monitor_txdata), 
    .monitor_txwrite(monitor_txwrite),
    .monitor_txfull(monitor_txfull),
    .monitor_rxdata(monitor_rxdata),
    .monitor_rxread(monitor_rxread),
    .monitor_rxempty(monitor_rxempty)
    );

endmodule
