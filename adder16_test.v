`include "adder0.v"

module adder16_test;
  reg [`size-1:0] a, b;
  reg cin;

  // output declaration of module adder16
  wire [`size-1:0] sum;
  wire cout;

  adder0 u_adder0(
            .a    	(a     ),
            .b    	(b     ),
            .cin  	(cin   ),
            .sum  	(sum   ),
            .cout 	(cout  )
          );

  initial
    begin
      a = `size'h0001;
      b = `size'h0001;
      cin = 0;
      #10;
      a = `size'hFFFF;
      b = `size'h0001;
      cin = 0;
      #10;
      a = `size'hAAAA;
      b = `size'h5555;
      cin = 1;
      #10;
      $finish();
    end

  initial
    begin
      $dumpfile("adder16_wave.vcd");
      $dumpvars(0, adder16_test);
    end
endmodule
