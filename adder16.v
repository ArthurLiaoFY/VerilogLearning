`include "adder0.v"

module adder16(a, b, cin, sum, cout);
  input[`size-1:0] a, b;
  input cin;
  output[`size-1:0] sum;
  output cout;

  adder0 u_adder0(
           .a    (a),
           .b    (b),
           .cin  (cin),
           .sum  (sum),
           .cout (cout)
         );
endmodule
