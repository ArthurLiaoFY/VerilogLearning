module condition(a,b,sel,out);
  input[3:0] a, b;
  input sel;
  output[3:0] out;
  reg[3:0] out;
  always @(a or b or sel)
    begin
      out = sel?a:b;
    end
endmodule
