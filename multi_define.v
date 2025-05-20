module multi_define;
  reg[3:0] out1, out2, out3;
  initial
    begin
`define a 1

      out1=`a;

`define a 2

      out2=`a;

`define a 3

      out3=`a;

      $display(out1);
      $display(out2);
      $display(out3);
    end

endmodule
