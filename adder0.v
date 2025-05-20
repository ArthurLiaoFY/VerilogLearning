`define size 16

module adder0(a, b, cin, sum, cout);
  input cin;
  input [`size-1:0] a, b;
  output cout;
  output [`size-1:0] sum;

  reg [`size-1:0] sum;
  reg cout;

  always @(a or b or cin)
    begin
      {cout, sum} = a + b + cin;
    end
endmodule
