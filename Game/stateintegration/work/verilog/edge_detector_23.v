/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     RISE = 1
     FALL = 1
*/
module edge_detector_23 (
    input clk,
    input in,
    output reg out
  );
  
  localparam RISE = 1'h1;
  localparam FALL = 1'h1;
  
  
  reg M_last_d, M_last_q = 1'h0;
  
  always @* begin
    M_last_d = M_last_q;
    
    out = 1'h0;
    M_last_d = in;
    if (1'h1) begin
      if (in == 1'h1 && M_last_q == 1'h0) begin
        out = 1'h1;
      end
    end
    if (1'h1) begin
      if (in == 1'h0 && M_last_q == 1'h1) begin
        out = 1'h1;
      end
    end
  end
  
  always @(posedge clk) begin
    M_last_q <= M_last_d;
  end
  
endmodule
