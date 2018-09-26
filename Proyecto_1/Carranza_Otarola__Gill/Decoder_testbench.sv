
module testbench();
  reg [15:0] entrada;
  wire [15:0] salida;
  
  binary2bcd dut(.entrada(entrada), .salida(salida));
  
  initial begin
   // always(entrada)
    entrada = 16'hc; #10
    
    begin 
      if (salida == 00010010) $display ("BIEN");  // desplegando en decimal,
      											//pero la comparación está en todas
 //     $display("entrada",entrada);
   //   $display("salida ", salida);
  //    $display("probando", 16'h12); // decimal 
    end
    #10;
    entrada = 16'hA; #10
    begin
      if (salida == 00010000) $display ("CORRECTO");
    end
       
  end 
  
endmodule 
          
          