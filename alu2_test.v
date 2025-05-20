`include "alu2.v"

module alu2_test;
  reg[1:0] sel;
  reg[3:0] a, b;
  // output declaration of module alu2
  wire [7:0] out;

  alu2 u_alu2(
         .sel 	(sel  ),
         .a   	(a    ),
         .b   	(b    ),
         .out 	(out  )
       );
  initial
    begin
      a = 2;
      b = 3;
      sel = 2'b00;
      #1 sel = 2'b01;
      #1 sel = 2'b10;
      #1 sel = 2'b11;
      #1 $finish();
    end

  initial
    begin
      $dumpfile("alu2_wave.vcd");
      $dumpvars(0, alu2_test);
    end

endmodule
