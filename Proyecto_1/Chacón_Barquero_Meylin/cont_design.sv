//CONTADOR DE 8 BITS
module counter( cnt, enable, clk, reset, upndwn);
  
//----------salidas-----------//
  output reg [7:0] cnt;
//------------entradas--------//
  input enable, clk, reset, upndwn;

  
//-------------Codigo---------//
  always @(posedge clk) 
    begin
    if (reset) 
      cnt = 8'b0 ;
    else if (enable) begin
        if (upndwn)
        	cnt = cnt - 1;
        
        else 
          cnt = cnt + 1; 
       
      end
    end
endmodule
