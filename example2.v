module arithmetic_test;
  reg [3:0] a,b,c;
  initial
    begin
      a = 4'b1100;
      b = 4'b0011;
      c = 4'b0010;

      $display(a);
      $display(b);
      $display(c);

      $displayb(36);

      $display(a*b); //因為上方給的位數太少導致被截掉，12*3 = 36, 換成二進位是 00000000000000000000000000100100，但只給四個位數，所以被截斷至 0100，也就是 4
      $display(a/b);
      $display(a+b);
      $display(a-b);
      $display(c**b);
      $display(b%c);

    end
endmodule

// more bit in reg
module arithmetic_test2;
  reg [31:0] a,b,c;
  initial
    begin
      a = 4'b1100;
      b = 4'b0011;
      c = 4'b0010;
      $display(a*b);
      $display(a/b);
      $display(a+b);
      $display(a-b);
      $display(c**b);
      $display(b%c);

    end
endmodule
