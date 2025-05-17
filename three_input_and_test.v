`timescale 1ns/1ps
/*
1 奈秒 = 1,000 皮秒
*/
module three_input_and_test;
  reg[3:0] a,b,c,f;

  three_input_and u_three_input_and(
                    .a 	(a  ),
                    .b 	(b  ),
                    .c 	(c  ),
                    .f 	(f  )
                  );

  initial
    begin
      a = 4'b0001;
      b = 4'b0001;
      c = 4'b0001;
      #5 a = 4'b0000;
      #5 a = 4'b0001;
      #5 $finish();
    end

  initial
    begin
      $monitor("Time = %0t | a = %b | b = %b | c = %b | f = %b",
               $time, a,b,c,f);
    end
endmodule
