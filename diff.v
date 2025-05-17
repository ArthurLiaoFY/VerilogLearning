module diff(clk, reset, d, q);
  input clk, reset;
  input [4:0] d;
  output reg [4:0] q;

  // 非同步、低電位有效的 reset
  always @(posedge clk or negedge reset)
    if (!reset)
      q <= 0;
    else
      q <= d;
endmodule