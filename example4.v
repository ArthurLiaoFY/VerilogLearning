module logic_test;
  reg[3:0] a,b,c;
  /*
  等同以下
  reg [2:0] a;
  reg [2:0] b;
  reg [2:0] c;
  */
  initial
    begin
      a=4'b0110;
      b=4'b0000;
      c=4'hx;
      $display(a);
      $display(b);
      $display(c);


      $displayb(a);
      $displayb(b);
      $displayb(c);

      $display("!a  = %b", !a);
      $display("a | c  = %b", a|c);
      $display("a || c  = %b", a||c);
      $display("a & c  = %b", a & c);   // 4-bit 結果：xxxx
      $display("a && c = %b", a && c);  // 1-bit 結果：x

      $display("!b  = %b", !b);
      $display("a | b  = %b", a | b);
      $display("a || b  = %b", a || b);
      $display("a & b  = %b", a & b);
      $display("a && b  = %b", a && b);

      /*
      a && c：
      •	a = 4'b0110 → 非 0 → true（布林值為 1）
      •	c = 4'bxxxx → 未知 → 判斷不了它是不是 true or false → 結果為 x
      */
    end
endmodule
