// Code your design here
//CONTADOR ASCENDENTE_DESCENDENTE CON RESET

module Count_Up_Down (clk,reset,up_down,out);
    input  clk,reset,up_down;
     output reg [7:0] out;

  always @(posedge clk)
    
    if(reset) 
      begin
      out <= 8'b0;
      end
    else
      if(up_down) // UP_DOWN a "1" es UP y en "0" es DOWN
         begin
           out <= out + 1'b1;
         end
       else
          begin 
           out <= out - 1'b1;
          end
endmodule
  
  
  
        
     