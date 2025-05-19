module latch2(load, a, b,q);
  input load;
  input[1:0] a,b ;
  output[1:0] q;

  reg[1:0] q;
  always @(load or a or b)
    begin
      if (load)
        q = a;
      else
        q = b;
    end
endmodule
