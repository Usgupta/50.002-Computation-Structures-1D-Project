/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_14 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg z,
    output reg v,
    output reg n,
    output reg [15:0] out
  );
  
  
  
  reg [15:0] s;
  
  always @* begin
    
    case (alufn[0+3-:4])
      4'h0: begin
        s = a + b;
      end
      4'h1: begin
        s = a - b;
      end
      default: begin
        s = 1'h0;
      end
      4'h3: begin
        s = a + 1'h1;
      end
      4'h7: begin
        s = a - 1'h1;
      end
    endcase
    z = (s == 1'h0);
    v = (a[15+0-:1] & (b[15+0-:1] ^ alufn[0+0-:1]) & !s[15+0-:1]) | (!a[15+0-:1] & !(b[15+0-:1] ^ alufn[0+0-:1]) & s[15+0-:1]);
    n = s[15+0-:1];
    out = s;
  end
endmodule
