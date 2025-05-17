module count16(clk, reset, out);
  input clk, reset;
  output[3:0] out;

  reg[3:0] out;

  always @ (posedge clk or negedge reset)
    begin
      if (reset)
        out <= 4'b0000;
      else
        out <= out + 4'b0001;
    end


endmodule
