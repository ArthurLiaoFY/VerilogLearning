module latch1(load, d,q);
  input load;
  input[1:0] d;
  output[1:0] q;

  reg[1:0] q;
  
  always @(load or d)
    begin
      if (load)
        q = d;
    end
endmodule
