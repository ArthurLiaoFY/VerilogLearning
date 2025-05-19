module code4_2_test;
  reg[3:0] I;
  // output declaration of module code4_2
  wire [1:0] Q;

  code4_2 u_code4_2(
            .I 	(I  ),
            .Q 	(Q  )
          );
  initial
    begin
      #1 I = 4'b0001;
      #1 I = 4'b0010;
      #1 I = 4'b0100;
      #1 I = 4'b1000;
      #1 I = 4'b0001;
      #1 $finish();
    end
  initial
    begin
      $dumpfile("code4_2_wave.vcd");
      $dumpvars(0, code4_2_test);
    end

endmodule
