module reduction_test;
  reg[3:0] a, b, c;
  initial
    begin
      a = 4'b1101;
      b = 4'b1111;
      c = 4'b1x01;

      $displayb(&a);
      $displayb(&b);
      $displayb(&c);
    end
endmodule
