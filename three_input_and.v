module three_input_and(a,b,c,f);
  input a,b,c;
  output f;

  reg f;

  always @(*)
    begin
      f = a&b&c;
    end

endmodule
