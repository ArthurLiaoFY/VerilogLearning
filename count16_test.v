module count16_test;
  reg clk;
  reg reset;
  wire [3:0] out;


  count16 u_count16(
            .clk   	(clk    ),
            .reset 	(reset  ),
            .out   	(out    )
          );

  // 產生 10ns 週期的時脈：高5ns、低5ns
  initial
    begin
      clk = 0;
      forever
        #5 clk = ~clk;
    end

  // 控制 reset 並觀察 out 變化
  initial
    begin
      // 初始化
      reset = 1;    // 先 reset
      #12;          // 等待 12ns

      reset = 0;    // 放開 reset，開始計數
      #100;         // 模擬一段時間

      reset = 1;    // 再 reset 一次
      #10;

      reset = 0;    // 繼續計數
      #40;

      $finish;      // 結束模擬
    end

  initial
    begin
      $dumpfile("count16_wave.vcd");         // 指定輸出的波形檔名
      $dumpvars(0, count16_test);  // 記錄整個模組所有變數
    end

endmodule
