//
// Verilog Module mopshub_testbench.tb_emp_elink_memory_interface
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 10:35:10 03/16/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_emp_elink_memory_interface() ;
  wire             clk_40_m;
  wire             clk_100_m;
  wire              rst;
  reg              reset   = 1'b0;
  string           info_debug_sig;
  wire             intr_done;
  // Write SM
  reg               start_write_sm =1'b0;
  wire              s_axi_wvalid;
  wire              s_axi_awvalid;
  wire              s_axi_bready;
  wire              s_axi_wready; 
  wire    [7:0]     s_axi_awaddr_command;

  wire    [3:0]     s_axi_wstrb;
  wire    [31:0]    s_axi_wdata;
  wire    [31:0]    downlink_data;
  // Read SM
  reg              start_read_sm =1'b0;
  wire              s_axi_rready; 
  wire              s_axi_rvalid;
  wire              s_axi_arvalid;
  wire    [7:0]    s_axi_araddr_command;
  wire             s_axi_bvalid;
	wire    [31:0]   s_axi_rdata;	  
  //debug
	wire     command_mem_read_write;
	wire    [31:0]   mem_addr_value;
	wire    [31:0]   mem_write_data_value;
	
	
	
assign 	mem_addr_value = elink_interface0.mem_addr_value;
assign  mem_write_data_value = elink_interface0.mem_write_data_value;
assign 	command_mem_read_write = elink_interface0.command_mem_read_write;
// ### Please start your Verilog code here ### 
emp_elink_memory_interface  #(.MEMORY_DEPTH(5)) elink_interface0(// it was  70000
	  .BASEADDR(32'h0xA00C0000),
		.rst(rst),
		.uplink_clk_40MHz(clk_40_m),
		.downlink_clk_40MHz(clk_40_m),
		.axi_aclk(clk_100_m),
		.axi_aresetn(reset),
		.intr_done(intr_done),		
		//write part
		.s_axi_awaddr ({24'hA00C00,s_axi_awaddr_command}),
		.s_axi_awprot (3'h0),
		.s_axi_awvalid(s_axi_awvalid),
		.s_axi_wdata  (s_axi_wdata),
		.s_axi_wstrb  (s_axi_wstrb),
		.s_axi_wvalid (s_axi_wvalid),
		
		.s_axi_arprot (3'h0),
		.s_axi_bready (s_axi_bready),
		// read data part 
		.s_axi_arvalid(s_axi_arvalid), 
		.s_axi_arready(s_axi_arready),
		.s_axi_araddr ({24'hA00C00,s_axi_araddr_command}),
		.s_axi_rready (s_axi_rready),
		.s_axi_rvalid(s_axi_rvalid),
 		.s_axi_rdata(s_axi_rdata),
 		.uplink_data(230'hAAAABBBBCCCCDDDDEEEEFFFFBEEFBEEF),
    // outputs
		.downlink_data(downlink_data),
		.s_axi_awready(),
		.s_axi_wready(s_axi_wready),
		.s_axi_rresp(),
		.s_axi_bresp(),
		.s_axi_bvalid(s_axi_bvalid));
  //Clock Generators and Dividers master
  clock_generator #(
  .freq(100))
  clock_generator0( 
  .clk  (clk_100_m), 
  .enable (1'b1)
  ); 


emp_elink_mopshub_sm emp_elink_mopshub_sm0( 
     .clk(clk_100_m), 
     .rst(reset),
     .intr_done(intr_done),	 
     .s_axi_wdata(s_axi_wdata),
     .s_axi_bvalid(s_axi_bvalid), 
     .s_axi_wready(s_axi_wready), 
     .start_write_memory(start_write_sm), 
     .s_axi_awaddr_command(s_axi_awaddr_command),    
     .s_axi_awvalid(s_axi_awvalid), 
     .s_axi_bready(s_axi_bready), 
     .s_axi_wstrb(s_axi_wstrb), 
     .s_axi_wvalid(s_axi_wvalid),
     // read part
  	 .s_axi_arvalid(s_axi_arvalid), 
  	 .s_axi_arready(s_axi_arready),
    .s_axi_araddr_command(s_axi_araddr_command),
		.s_axi_rready (s_axi_rready),
		.s_axi_rvalid(s_axi_rvalid)
);

  clock_divider #(28'd2)
  clock_divider0( 
  .clock_in  (clk_100_m), 
  .clock_out (clk_40_m)
  ); 

assign rst = !reset;
/////******* Reset Generator task--low active ****/////
  initial 
  begin
    reset=1'b0;
    #10 
    reset=1'b1;
    #10
    start_write_sm= 1'b1;
    #200
    start_write_sm= !start_write_sm;
  end 
   
  always@(posedge clk_100_m)
    begin
    if (rst)
      begin
        info_debug_sig = {""};
      end 
    else
    if (command_mem_read_write)
        $strobeh("\t Writting Data to Memory[Addr%d(%h)]: \t s_axi_wdata =  %h\t",mem_addr_value,mem_addr_value,mem_write_data_value);
    else if (s_axi_rready ==1'b1)
          $strobeh("\t Read Data from Memory[Addr%d(%h)]: \t s_axi_rdata =  %h\t",mem_addr_value,mem_addr_value,s_axi_rdata);    
    else if (s_axi_wvalid)  
      case (s_axi_awaddr_command)
        8'h0: info_debug_sig = {"<W:Magic",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),":>"};    
        8'h4: info_debug_sig = {"<W:Command:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};
        8'h8: info_debug_sig = {"<W:Status:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};
        8'hC: info_debug_sig = {"<W:Memory_addr:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};      
        8'h10:info_debug_sig = {"<W:Memory write Data:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};    
        8'h14:info_debug_sig = {"<W:Memory read Data:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};    
        8'h18:info_debug_sig = {"<W:Group_sel:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};                      
        8'h1C:info_debug_sig = {"<W:int_enable:",$sformatf("%h",{24'hA00C00,s_axi_awaddr_command}),">"};             
        default :info_debug_sig = {""};
      endcase 
    else if (s_axi_arvalid)  
      case (s_axi_araddr_command)
        8'h0: info_debug_sig = {"<R:Magic",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),":>"};    
        8'h4: info_debug_sig = {"<R:Command:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"};
        8'h8: info_debug_sig = {"<R:Status:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"};
        8'hC: info_debug_sig = {"<R:Memory_addr:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"};      
        8'h10:info_debug_sig = {"<R:Memory write Data:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"};    
        8'h14:info_debug_sig = {"<R:Memory read Data:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"}; 
        8'h18:info_debug_sig = {"<R:Group_sel:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"};                      
        8'h1C:info_debug_sig = {"<R:int_enable:",$sformatf("%h",{24'hA00C00,s_axi_araddr_command}),">"};             
        default :info_debug_sig = {""};
      endcase
   else
   info_debug_sig<=info_debug_sig;
   end
   

endmodule
