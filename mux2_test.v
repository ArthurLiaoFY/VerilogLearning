`include "mux2.v"

module mux2_test;
  reg[3:0] a, b;
  reg sel;
  wire [3:0] q;

  mux2 u_mux2(
         .a   	(a    ),
         .b   	(b    ),
         .sel 	(sel  ),
         .q   	(q    )
       );

  initial
    begin
      sel = 0;
      forever
        #5 sel = !sel;
    end

  initial
    begin
      a = 0;
      b = 1;
      #7 a = 2;
      #3 a = a + 5;
      #40 $finish();

    end
  // 波形輸出設定
  initial
    begin
      $dumpfile("mux2_wave.vcd");
      $dumpvars(0, mux2_test);
    end
endmodule
