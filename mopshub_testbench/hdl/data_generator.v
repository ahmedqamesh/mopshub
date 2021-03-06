`resetall
`timescale 1ns/10ps
module data_generator #(
   // synopsys template
   parameter DATA_WIDTH   = 76,
   parameter max_cnt_size = 5,
   parameter CAN_ID_WIDTH = 12,
   parameter SDO_RX       = 5'h0B,
   parameter SDO_TX       = 5'h0C,
   parameter n_buses      = 5'b11111
)
( 
   input   wire                      loop_en, 
   output  wire                      done, 
   input   wire                      rst, 
   output  wire                      irq_elink, 
   output  reg     [DATA_WIDTH-1:0]  payload            = 76'b0100000, 
   input   wire                      clk,                               // write FIFO clk
   output  wire                      end_read_elink, 
   output  wire                      buffer_en, 
   output  reg     [7:0]             busid              = 0, 
   output  wire                      txgen, 
   input   wire                      sign_on_sig, 
   input   wire                      start_read_elink, 
   input   wire                      end_send_msg
);


// Internal Declarations
wire  [CAN_ID_WIDTH-1:0] sdoid;                       // this is the actual ID of the CANOpen message for SDO objects
reg   [6:0]              nodeid            = 7'h0;    // Hardwired CANopen Node-ID for each DCS controller chip
wire                     counter_en;
wire  [max_cnt_size-1:0] sel_cnt;
wire  [2:0]              state_o;
wire                     ext_rst;
reg                      out_request_trig;


// Instances 
bit_counter #(max_cnt_size) BitCounter( 
   .data_out (sel_cnt), 
   .enable   (counter_en), 
   .clk      (clk), 
   .rst      (rst), 
   .ext_rst  (ext_rst)
); 

can_frame_gen CANGen( 
   .rst     (rst), 
   .clk     (clk), 
   .payload (payload), 
   .txgen   (txgen)
); 

data_generator_SM DataGen( 
   .clk              (clk), 
   .rst              (rst), 
   .done             (done), 
   .end_send_msg     (end_send_msg), 
   .irq_elink        (irq_elink), 
   .counter_en       (counter_en), 
   .buffer_en        (buffer_en), 
   .state_o          (state_o), 
   .loop_en          (loop_en), 
   .end_read_elink   (end_read_elink), 
   .cnt_done         (out_request_trig), 
   .sign_on_sig      (sign_on_sig), 
   .start_read_elink (start_read_elink)
); 

// HDL Embedded Text Block 1 data_loader
// data_loader 1
//sel din process
//assign request_trig = (sel_cnt == n_buses) ? 1:0; 
assign sdoid = {SDO_TX,nodeid}; //600+nodeid 
always @(posedge clk)
begin
  if(!rst)
  begin
    busid   <= 8'h20;
    payload <= {sdoid,16'h0, 16'h0, 16'h0, 8'h0, busid};
    
  end
  else
  case (sel_cnt)
    5'h0 : begin 
      busid  <= 8'h0; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF,8'h0, busid};
      
    end
    5'h1 : begin
      busid  <= 8'h1; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF,8'h0, busid};
      
    end
    5'h2 : begin 
      busid  <= 8'h2; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF,8'h0, busid};
      
    end
    5'h3 : begin 
      busid  <= 8'h3; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF,8'h0, busid};
      
    end
    5'h4 : begin 
      busid  <= 8'h4;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h5 : begin
      busid  <= 8'h5; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h6 : begin 
      busid  <= 8'h6; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h7 : begin 
      busid  <= 8'h7; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h8 : begin 
      busid  <= 8'h8; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h9 : begin 
      busid  <= 8'h9;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'hA : begin 
      busid  <= 8'hA; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'hB : begin 
      busid  <= 8'hB; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'hC : begin 
      busid  <= 8'hC; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'hD : begin 
      busid  <= 8'hD; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'hE : begin 
      busid  <= 8'hE;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'hF : begin 
      busid  <= 8'hF; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h10 : begin 
      busid  <= 8'h10; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h11 : begin 
      busid  <= 8'h11; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h12 : begin busid  <= 8'h12; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h13 : begin busid  <= 8'h13;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h14 : begin 
      busid  <= 8'h14; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h15 : begin busid  <= 8'h15; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h16 : begin busid  <= 8'h16; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h17 : begin busid  <= 8'h17;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h18 : begin busid  <= 8'h18; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h19 : begin busid  <= 8'h19; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h1A : begin busid  <= 8'h1A; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h1B : begin busid  <= 8'h1B; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h1C : begin busid  <= 8'h1C;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end 
    5'h1D : begin busid  <= 8'h1D; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h1E : begin 
      busid  <= 8'h1E; 
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    5'h1F : begin 
      busid  <= 8'h1F;
      payload  <= {sdoid,16'hDEAD, 16'h0, 16'hBEEF, 8'h0, busid};
      
    end
    default: begin 
      busid  <= 8'h20;
      payload  <= {sdoid,16'h0, 16'h0, 16'hF, 8'h0, busid};
      
    end    
  endcase
end                                            
endmodule
