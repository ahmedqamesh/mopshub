//
// Verilog Module mopshub_lib.ip_xadc_wrapper
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:48:43 04/11/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

// Temp (C)= ADC code x 503.975/4096 - 273.15
//For example : ADC code 2423 (977H) = 25 C
`resetall
`timescale 1ns/10ps
module ip_xadc_wrapper
       (
input wire           clk,             // Clock input for the dynamic reconfiguration port             
input wire reset,            // Reset signal for the System Monitor control logic
output wire busy_out,            // ADC Busy signal
output wire [15 : 0]  do_out,              // Output data bus for dynamic reconfiguration port
output wire [4 : 0] channel_out,         // Channel Selection Outputs
output wire           drdy_out,            // Data ready signal for the dynamic reconfiguration port
output wire           eos_out,             // End of Sequence Signal
output wire           alarm_out);  

xadc_wiz_0 xadc_wiz_inst (
            .daddr_in({{2{1'b0}},channel_out}),// Address bus for the dynamic reconfiguration port
            .dclk_in(clk),
            .den_in(eoc_out), // Enable Signal for the dynamic reconfiguration port
            .di_in(16'b0),// Input data bus for the dynamic reconfiguration port you dont need any data
            .dwe_in(1'd0),// Write Enable for the dynamic reconfiguration port
            .reset_in(reset),
            .busy_out(busy_out), // ADC Busy signal
            .channel_out(channel_out),// Channel Selection Outputs
            .do_out(do_out[15:0]),//Temprature value
            .drdy_out(drdy_out),// Output data bus for dynamic reconfiguration port
            .eoc_out(eoc_out),// End of Conversion Signal
            .eos_out(eos_out),// End of Sequence Signal
            .alarm_out(alarm_out),
            .vp_in(1'b0),
            .vn_in(1'b0)
            );
endmodule