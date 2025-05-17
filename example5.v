module example5;
  reg[3:0] a, b, c;
  reg[5:0] d;
  reg[4:0] e;

  initial
    begin
      a = 4'b1100;
      b = 4'b0011;
      c = 4'b0101;
      d = 6'b001010;
      e =5'bx1100;
      $displayb(~a);
      $displayb(a&c);
      $displayb(a|b);
      $displayb(b^c);
      $displayb(a^c);
      $displayb(a~^c);
      $displayb(a&d);
      $displayb(d|e);

    end
endmodule
