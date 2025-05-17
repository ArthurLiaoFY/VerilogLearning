module example7;
  reg[3:0] a, b, c, d;
  initial
    begin
      a = 1;
      b = 2;
      c = 1;
      c = a+b;
      $display(d);

      d = a+c;
      $display(c);
      $display(d);

    end

endmodule
