module code8_3(I, Q);
  input[7:0] I;
  output[2:0] Q;

  reg[2:0] Q;

  always @(I)
    begin
      case (I)
        8'b0000_0001:
          Q=3'b000;
        8'b0000_0010:
          Q=3'b001;
        8'b0000_0100:
          Q=3'b010;
        8'b0000_1000:
          Q=3'b011;
        8'b0001_0000:
          Q=3'b100;
        8'b0010_0000:
          Q=3'b101;
        8'b0100_0000:
          Q=3'b110;
        8'b1000_0000:
          Q=3'b111;
        default Q=3'bx;
      endcase
    end
endmodule
