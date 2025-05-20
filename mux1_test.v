`include "mux1.v"

module mux1_test;// output declaration of module mux1
  reg[3:0] a;
  reg sel;
  wire [3:0] q;

  mux1 u_mux1(
         .a   	(a    ),
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
      #7 a = 2;
      #3 a = a + 5;
      #40 $finish();

    end
  // 波形輸出設定
  initial
    begin
      $dumpfile("mux1_wave.vcd");
      $dumpvars(0, mux1_test);
    end
endmodule
