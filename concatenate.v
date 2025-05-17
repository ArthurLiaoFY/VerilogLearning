module concatenate;
  reg[1:0] a;
  reg[2:0] b;
  reg[3:0] c;
  initial
    begin
      a = 2'b01;
      b = 3'b101;
      c = 4'b1110;
      $displayb({a, b});
      $display({a, b});

      $displayb(c[2:0]);

      $displayb({a, c[2:0]});
      $displayb({a, c[2:1]});
      $displayb({a, c[2:2]});
    end
endmodule
