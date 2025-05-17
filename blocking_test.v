`timescale 1ns/1ps

module blocking_test;
  reg clk, a;
  wire [3:0] b, c, d;

  // 實例化測試模組
  blocking u_blocking(
             .clk(clk),
             .a(a),
             .b(b),
             .c(c),
             .d(d)
           );

  // 時脈產生器 (20ns 週期)
  initial
    begin
      clk = 0;
      forever
        #10 clk = ~clk;
    end

  // 輸入訊號 a 隨時間變化
  initial
    begin
      a = 0;
      #25 a = 1;
      #20 a = 2;
      #20 a = 3;
      #20 a = 4;
      #20 $finish;
    end

  // 顯示輸出結果
  initial
    begin
      $monitor("Time=%0t | clk=%b | a=%b | b=%d | c=%d | d=%d",
               $time, clk, a, b, c, d);
    end

  // 波形輸出設定
  initial
    begin
      $dumpfile("blocking_wave.vcd");
      $dumpvars(0, blocking_test);
    end
endmodule
