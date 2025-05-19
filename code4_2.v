module code4_2(I, Q);
  input[3:0] I;
  output[1:0] Q;

  reg[1:0] Q;

  always @(I)
    begin
      case (I)
        4'b0001:
          Q=2'b11;
        4'b0010:
          Q=2'b10;
        4'b0100:
          Q=2'b01;
        4'b1000:
          Q=2'b00;
        default:
          Q=2'bxx;
      endcase
    end

endmodule
