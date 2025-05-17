`timescale 1ns/1ns
module signal;
  reg out;
  initial
    fork
      out = 0;
      #1 out = 1;
      #2 out = 1;
      #3 out = 0;
      #4 out = 1;
      #5 $finish;
    join
endmodule
