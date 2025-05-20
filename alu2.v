module alu2(a, b, sel, out);
  input[1:0] sel;
  input[3:0] a, b;
  output[7:0] out;

  reg[7:0] out;

  function[7:0] mult2;
    input[3:0] c,d;
    integer i;

    begin
      mult2 = 0;
      for (i =0; i<4; i = i+1)
        begin
          if(d[i] == 1)
            mult2 = mult2 + (c<<i);
        end
    end
  endfunction

  always @(a or b or sel)
    begin
      case(sel)
        2'b00:
          out=a+b;
        2'b01:
          out=a-b;
        2'b10:
          out=mult2(a,b);
        2'b11:
          out=a&b;
        default:
          out=4'bx;
      endcase
    end


endmodule
