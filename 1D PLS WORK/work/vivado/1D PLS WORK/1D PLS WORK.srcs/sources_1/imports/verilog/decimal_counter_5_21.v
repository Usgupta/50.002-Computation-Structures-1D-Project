/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     INIT = d5
*/
module decimal_counter_5_21 (
    input clk,
    input rst,
    input dec,
    input reset2,
    input reset5,
    output reg ovf,
    output reg [3:0] value
  );
  
  localparam INIT = 3'h5;
  
  
  reg [3:0] M_val_d, M_val_q = 3'h5;
  
  always @* begin
    M_val_d = M_val_q;
    
    value = M_val_q;
    ovf = M_val_q == 1'h0 && dec;
    if (reset2) begin
      M_val_d = 2'h2;
    end
    if (reset5) begin
      M_val_d = 3'h5;
    end
    if (dec) begin
      if (M_val_q == 1'h0) begin
        M_val_d = 3'h5;
      end else begin
        M_val_d = M_val_q - 1'h1;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_val_q <= 3'h5;
    end else begin
      M_val_q <= M_val_d;
    end
  end
  
endmodule
