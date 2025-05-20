module display_while;
  integer i;

  initial
    begin
      i = 0;
      while(i < 8)
        begin
          $display(i);
          #1 i = i+1;
        end
    end
endmodule
