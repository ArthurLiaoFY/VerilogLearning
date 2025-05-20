module alu1_test;
  reg[1:0] sel;
  reg[3:0] a, b;
  // output declaration of module alu2
  wire [7:0] out;

  alu1 u_alu1(
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
      $dumpfile("alu1_wave.vcd");
      $dumpvars(0, alu1_test);
    end

endmodule
