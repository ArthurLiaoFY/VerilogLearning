`include "multiplier4_for.v"
module multiplier4_for_test; // output declaration of module multiplier4_for
  reg[`width-1:0] a, b;
  wire [4*`width-1:0] out;
  // output declaration of module multiplier4_for

  multiplier4_for u_multiplier4_for(
                    .a   	(a    ),
                    .b   	(b    ),
                    .out 	(out  )
                  );

  initial
    fork
      a = 2;
      b = 1;
    join

  initial
    begin
      repeat(5)
        fork
          #1 a = a+1;
          #1 b = b+1;
        join
      b<=b+1;
    end
  initial
    begin
      $dumpfile("multiplier4_for_wave.vcd");
      $dumpvars(0, multiplier4_for_test);
    end
endmodule
