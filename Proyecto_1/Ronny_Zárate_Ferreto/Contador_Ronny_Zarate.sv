// Code your design here

module contador(
  input reset,UpDown,clk,
  output reg [7:0] cont = 8'd0
  );
  
  always @(posedge clk)
    begin
      if (reset)
          cont=8'd0;
      else if (UpDown==1)
          cont=cont+8'd1;
      else if (UpDown==0)
          cont=cont-8'd1;
      end
  	
  
  endmodule
