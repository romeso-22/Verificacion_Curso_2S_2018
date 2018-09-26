// Code your design here
module contador (
count      ,  // Salida del contador
up_down  ,  // Cuenta ascendente/descendente
clk      ,  // clock input
reset ,      // reset input
en  // Enable
);

input up_down, clk, reset,en; // definir entradas
output reg [7:0] count; // 8bits registro salida 

  always @(posedge clk or negedge reset) begin
    if(~reset)begin   // resetea el contador
      count <= 0;
    end
    
   else if(en && up_down)begin
     count <= count+1; // cuenta ascendente
    end
      
    else if(en && ~up_down)begin
      count <= count-1;  // cuenta descendente 
    end
    
    else begin
      count <= count;
    end
    
  end
  
endmodule
