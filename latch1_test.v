`include "latch1.v"
module latch1_test;
  reg load;
  reg[1:0] d;

  // output declaration of module latch1
  wire [1:0] q;

  latch1 u_latch1(
           .load 	(load  ),
           .d    	(d     ),
           .q    	(q     )
         );
  initial
    begin
      load=0;
      forever
        #1 load = ~load;

    end

  initial
    begin
      d = 3;
      #10 $finish();

    end

  initial
    begin
      $dumpfile("latch1_wave.vcd");
      $dumpvars(0, latch1_test);
    end

endmodule
