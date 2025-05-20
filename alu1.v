module alu1(a, b, sel, out);
  input[1:0] sel;
  input[3:0] a, b;
  output[7:0] out;

  reg[7:0] out;

  task mult1;
    input[3:0] c,d;
    output[7:0] f;
    integer i;

    begin
      f = 0;
      for (i =0; i<4; i = i+1)
        begin
          if(d[i] == 1)
            f = f + (c<<i);
        end
    end
  endtask

  always @(a or b or sel)
    begin
      case(sel)
        2'b00:
          out=a+b;
        2'b01:
          out=a-b;
        2'b10:
          mult1(a,b, out);
        2'b11:
          out=a&b;
        default:
          out=4'bx;
      endcase
    end


endmodule
