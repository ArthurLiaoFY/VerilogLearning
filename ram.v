module ram();
  parameter size=16;
  integer i;
  reg[5:0] ram[size-1:0];
  initial
    begin
      for(i = 0; i < size; i = i + 1)
        begin
          ram[i] = i;
          $display("ram[%0d] = %b", i, ram[i]);
        end

    end
endmodule
