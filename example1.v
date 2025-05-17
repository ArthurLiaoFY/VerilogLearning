module example1(a, b, c, e,f);
  input a,b,c;
  output e, f;
  reg e, f;

  always@(a or b or c)
    begin
      e = a|b;
      f = e&c;
    end
endmodule
