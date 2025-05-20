`define width 4
module adder4(a, b, c, sum);
  input[`width-1:0] a,b,c;
  output[`width:0] sum;

  wire[`width-1:0] a, b, c;
  reg[`width:0] sum;
  always @(a or b or c)
    begin
      sum = a+b+c;
    end
endmodule

