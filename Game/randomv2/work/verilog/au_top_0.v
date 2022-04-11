/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_edge_detector_variableCounter_out;
  reg [1-1:0] M_edge_detector_variableCounter_in;
  edge_detector_2 edge_detector_variableCounter (
    .clk(clk),
    .in(M_edge_detector_variableCounter_in),
    .out(M_edge_detector_variableCounter_out)
  );
  wire [1-1:0] M_vc_out;
  wire [16-1:0] M_vc_debug;
  variable_counter_3 vc (
    .clk(clk),
    .rst(rst),
    .out(M_vc_out),
    .debug(M_vc_debug)
  );
  reg [15:0] M_led_register_d, M_led_register_q = 1'h0;
  
  wire [4-1:0] M_lookup_led_Out;
  reg [4-1:0] M_lookup_randgen;
  look_up_table_4 lookup (
    .randgen(M_lookup_randgen),
    .led_Out(M_lookup_led_Out)
  );
  
  always @* begin
    M_led_register_d = M_led_register_q;
    
    led = 8'h00;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    M_edge_detector_variableCounter_in = M_vc_out;
    M_led_register_d = M_edge_detector_variableCounter_out;
    M_lookup_randgen = M_led_register_q[0+3-:4];
    io_led[0+0+3-:4] = M_lookup_led_Out;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_led_register_q <= 1'h0;
    end else begin
      M_led_register_q <= M_led_register_d;
    end
  end
  
endmodule