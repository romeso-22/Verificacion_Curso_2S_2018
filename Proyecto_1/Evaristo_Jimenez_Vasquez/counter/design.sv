// Code your design here
module counter (clk,reset,up_down,out,enable);
  input enable,reset,up_down,clk;
  output [7:0]out;
  reg [7:0] out;
  always @(posedge clk)
  if (reset) begin
    out <= 8'd0 ;
  end 
  else if (enable && up_down) begin
    out <= out + 1;
  end
  else if (enable) begin
    out <= out - 1;
  end
  
  endmodule 
  
 // Posibles escenarios de prueba

// Verificar que el reset reinicie el contador

// Verificar que cuente o no cuente dependiendo del enable

// Verificar que cuente solo en los flancos positivos del clock

// Verificar que se cumple el contador hacia arriba o hacia abajo

//