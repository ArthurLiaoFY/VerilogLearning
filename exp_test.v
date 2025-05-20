`define exp1 a + b
`define exp2 `exp1 + c
`define exp3 `exp2 + d
module exp_test;
  reg[3:0] a,b,c,d;
  reg[8:0] out;
  initial
    begin
      a =15;
      b =15;
      c =15;
      d =15;
      out = `exp3;
      $display(out);

    end

endmodule
