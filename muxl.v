module mux1(a, sel, q);
  input[3:0] a;
  input sel;
  output[3:0] q;
  reg[3:0] q;
  always @(a or sel)
    begin
      if (sel)
        q = a;
    end
endmodule
