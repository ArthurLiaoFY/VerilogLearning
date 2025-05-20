
`include "condition.v"
module condition_test;
  reg [3:0] a, b;
  reg sel;
  wire [3:0] out;

  // 實例化待測模組
  condition u_condition(.a(a), .b(b), .sel(sel), .out(out));

  initial
    begin
      // 初始輸入設定
      a = 4'b0111; // 7
      b = 4'b0010; //2
      sel = 0;

      // 觀察 sel = 0 時的輸出
      #10; // 延遲 10 個時間單位
      sel = 1; // 改變選擇信號，觀察 sel = 1 的輸出

      #10; // 再延遲 10 單位觀察
      $finish; // 結束模擬
    end

  // 即時輸出觀察波形
  initial
    begin
      $monitor("Time = %0t | sel = %b | a = %b | b = %b | out = %b",
               $time, sel, a, b, out);
    end

  // 加入 VCD 波形檔生成
  initial
    begin
      $dumpfile("condiiton_wave.vcd");         // 指定輸出的波形檔名
      $dumpvars(0, condition_test);  // 記錄整個模組所有變數
    end
endmodule
