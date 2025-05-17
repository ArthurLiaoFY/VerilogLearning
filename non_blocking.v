module non_blocking(clk, a,b,c,d);
  input clk, a;
  output[3:0] b, c, d;
  reg[3:0] b, c, d;
  always @(posedge clk)
    begin
      b <= a;
      c <= b;
      d <= c;
    end

endmodule
