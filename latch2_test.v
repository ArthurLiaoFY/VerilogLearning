module latch2_test;
  reg load;
  reg[1:0] a,b;

  // output declaration of module latch2
  wire [1:0] q;

  latch2 u_latch2(
           .load 	(load  ),
           .a    	(a     ),
           .b    	(b     ),
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
      a = 3;
      b = 2;
      #10 $finish();

    end

  initial
    begin
      $dumpfile("latch2_wave.vcd");
      $dumpvars(0, latch2_test);
    end

endmodule
