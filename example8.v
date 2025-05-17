module example8;
  reg[3:0] a, b, c, d;
  initial
    begin
      a = 1;
      b = 2;
      c = 1;
    end
  initial
    fork
      c = a+b;
      $display("d: ",d);

      d = a+c;
      $display("c: ",c);
      $display("d: ",d);
      #1 $display("#1 c: ",c);
      #1 $display("#1 d: ",d);
    join

endmodule
