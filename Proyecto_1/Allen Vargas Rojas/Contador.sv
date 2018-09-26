module count(
    input  clk, rst, crt,
  output reg [7:0] val = 8'd0
);
  

  always @(posedge clk)
    begin
      if(rst) 
        val = 8'd0;
      else if (crt == 1)
      val = val + 8'd1;
      else if (crt == 0)
        val = val - 8'd1;
      end
endmodule