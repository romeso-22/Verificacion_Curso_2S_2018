module contador_8(
  
  input rst,
  input clk,
  input UpDown,
  input act,
  output reg [7:0] contar = 8'b0
); 
  
  always @(posedge clk or posedge rst)
    begin
      if (rst)
          contar=8'b0;
      else if (act) begin
        if (UpDown)
          contar=contar+1;
        else 
          contar=contar-1;
      end else contar=8'b0;
   end
endmodule
