module signed_to_unsigned_demo;

  integer int_a;                // 32-bit signed 整數
  reg [15:0] reg_unsigned;      // 16-bit 無號整數
  reg signed [15:0] reg_signed; // 16-bit 有號整數

  initial
    begin
      int_a = -4;

      // 將 -4 指派給 signed reg 是沒問題的，會儲存為二補數形式
      reg_signed = int_a;       // reg_signed = 16'b1111_1111_1111_1100 = -4

      // 將 -4 指派給 unsigned reg 時，Verilog 會將該值的二補數直接視為正數
      // -4 in 16-bit two's complement = 0xFFFC = 16'b1111_1111_1111_1100
      // unsigned 16-bit 解讀 0xFFFC = 65532
      reg_unsigned = int_a;

      // 印出來觀察
      $display("int_a       = %0d", int_a);          // -4
      $display("reg_signed  = %0d", reg_signed);     // -4
      $display("reg_unsigned= %0d", reg_unsigned);   // 65532

      // 若你想正確解讀 unsigned 變數中的 signed 值，可以用 $signed 轉型
      $display("reg_unsigned (as signed) = %0d", $signed(reg_unsigned)); // -4
    end

endmodule


module signed_to_unsigned_table;

  integer i;
  reg signed [15:0] signed_val;
  reg [15:0] unsigned_val;

  initial
    begin
      $display("負數值\t16-bit 二補數\t\tUnsigned 解讀");

      // 從 -1 到 -12 做示範
      for (i = -1; i >= -12; i = i - 1)
        begin
          signed_val = i;
          unsigned_val = signed_val;

          $display("%0d\t%b\t%0d", signed_val, signed_val, unsigned_val);
        end
    end

endmodule

/*
輸出結果應類似於：
 
負數值    16-bit 二補數          Unsigned 解讀
-1        1111111111111111       65535
-2        1111111111111110       65534
-3        1111111111111101       65533
-4        1111111111111100       65532
-5        1111111111111011       65531
-6        1111111111111010       65530
-7        1111111111111001       65529
-8        1111111111111000       65528
-9        1111111111110111       65527
-10       1111111111110110       65526
-11       1111111111110101       65525
-12       1111111111110100       65524
 
說明：
- Verilog 會將 signed 負數用 2 的補數表示。
- 指派給 unsigned reg 時，位元內容不變，但會被當成正整數解讀。
- 例如 -4 = 16'b1111_1111_1111_1100 = 0xFFFC = 65532（unsigned 看法）
*/
