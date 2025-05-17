
module example6;
  reg[3:0] a,b,c,d;
  initial
    begin
      a = 4'b0011; // 3
      b = 4'b0110; // 6
      c = 4'b0011; // 3
      d = 4'hx;

      $display(a);
      $display(b);
      $display(c);

      $display(a<b); // True = 1
      $display(a>b); // False = 0
      $display(a>=c); // True = 1
      $display(d<=c); // 出現 x 返回 x


    end
endmodule
