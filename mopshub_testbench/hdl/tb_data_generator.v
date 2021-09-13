`resetall
`timescale 1ns/10ps
module tb_data_generator ;
  reg          clock  = 1;            // posedge
  reg          rst    = 1'b0; 
  reg          loop_en= 1'b0; 
  wire         done;               // dbg
  
  wire         buffer_en; //Enable the tra_buffer
  wire  [75:0] data_tra_uplink;
  wire         rx0;
  
  wire               irq_elink; 
  reg                sign_on_sig = 1'b0;
  reg                start_read_elink;
  wire               end_read_elink;
  reg                send_mes_can_done;
  
  data_generator #(
  .max_cnt_size (5),
  .n_buses (32)
  )DataGen(
  .clk(clock),
  .rst(rst),
  .loop_en(loop_en),
  .buffer_en(buffer_en),
  .sign_on_sig(sign_on_sig),
  .done(done),
  .txgen(rx0),
  .payload(data_tra_uplink),
  .irq_elink(irq_elink),
  .start_read_elink(start_read_elink),
  .end_read_elink(end_read_elink),
  .end_send_msg(send_mes_can_done));  
  
  initial begin 
    forever #1 clock=~clock; 
  end 
  initial 
  begin 
    #2 rst = !rst;
    loop_en= 0;
    sign_on_sig = 1;
  end
  always@(irq_elink) start_read_elink =1;
  always@(end_read_elink) send_mes_can_done =1;
endmodule
