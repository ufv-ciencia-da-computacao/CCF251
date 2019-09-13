module divide_by(abcd, by2, by3, by6);
  input [3:0] abcd;
  output reg by2, by3, by6;
  
  always @*
    begin
      if (abcd >= 12)
        begin
          by2 <= 1'bx;
          by3 <= 1'bx;
          by6 <= 1'bx;
        end
      else
        begin
          if ((abcd % 2) == 0)
            by2 <= 1'b1;
          else 
            by2 <= 1'b0;
          if ((abcd % 3) == 0)
            by3 <= 1'b1;
          else 
            by3 <= 1'b0;
          if ((abcd % 6) == 0)
            by6 <= 1'b1;
          else 
            by6 <= 1'b0;
        end
    end

endmodule