module mux2(a, b, sel, q);
  input[3:0] a, b;
  input sel;
  output[3:0] q;
  reg[3:0] q;
  always @(a or b or sel)
    begin
      if (sel)
        q = a;
      else
        q = b;
    end
endmodule
