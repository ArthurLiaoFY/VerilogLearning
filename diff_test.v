`timescale 1ns/1ps

module diff_test;
  reg clk, reset;
  reg [4:0] d;
  wire [4:0] q;

  // 實例化模組
  diff u_diff (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );

  // 時脈產生器：20ns 一個週期
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  // reset 流程
  initial begin
    reset = 0;    // 先 reset（active-low）
    #15 reset = 1; // 放開 reset
  end

  // 輸入 d 隨時間變化
  initial begin
    d = 5;
    #20 d = 6;
    #20 d = 8;
    #20 d = 15;
    #20 d = 3;
    #20 $finish;
  end

  // 顯示波形資訊
  initial begin
    $monitor("Time=%0t | clk=%b | reset=%b | d=%b | q=%b", $time, clk, reset, d, q);
  end

  // 波形檔案輸出
  initial begin
    $dumpfile("diff_wave.vcd");
    $dumpvars(0, diff_test);
  end
endmodule