// Code your design here

module contador (clk, reset, q, mode);
  input clk, reset, mode;
  output reg [7:0] q;
  
  
  always @ (posedge clk)
    begin
      if (reset ==1) 
        begin
          q <= 8'd0 ;
        end 
   
      else if (mode ==0)
        begin
          q <= q + 8'd1 ;
        end
  
      else if (mode == 1) 
        begin
          q <= q-8'd1 ;
        end
    end
  
endmodule
      
      
     
