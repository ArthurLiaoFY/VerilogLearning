module shift_test;
  reg[3:0] a,b,c;
  initial
    begin
      a = 4'b1001;
      b = 4'b10x0;
      c = 4'b1111;
      $displayb(a<<1);
      $displayb(a<<2);
      $displayb(b<<2);
      $displayb(c<<1);
      $displayb(c>>2);

    end
endmodule
