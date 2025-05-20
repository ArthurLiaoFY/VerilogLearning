module multiplier4_for(a, b, out);
  parameter width = 4;
  input[width-1: 0] a, b;
  output[4*width-1: 0] out;

  reg[4*width-1: 0] out;
  integer i;

  always @(a or b)
    begin
      out = 0;
      for (i = 0; i <= width-1; i = i + 1)
        begin
          if(b[i] == 1)
            out = out + (a<<i);
        end
    end
endmodule
