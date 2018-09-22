module tb_cont ();
  
  wire [7:0]cnt;
  reg enable, reset, upndwn;
  reg clk;
				//-- Registro para comprobar si el contador cuenta correctamente
  int counter_check =0;
    
				//-- Instanciar el contador
  counter dut( .clk(clk), .reset(reset), .cnt(cnt), .upndwn(upndwn), .enable(enable));
  
initial begin
				//-- Generador de reloj. Periodo 2 unidadeS

//-- Comprobacion del valor del contador
//-- En cada flanco de bajada se comprueba la salida del contador
//-- y se incrementa el valor esperado
  #10;
  clk=1;#10;
  reset =1'd1; #10;
  clk=0;#10;
  clk=1;#10;
  reset = 1'd0; #10;
  $display("contador %0d",cnt);
  enable =1;#10;
  while(counter_check<=255)
    begin
      clk=~clk;#1   
      if (counter_check != cnt)
      $display("-->ERROR!. Esperado: %d. Leido: %d",counter_check, cnt);
 	else
		$display("-->CORRECTO Esperado: %d. Leido: %d",counter_check, cnt);
  #10;
		counter_check++;
      clk=~clk;#10 ;
     
end
      
  //-- Comprobación del reset.
 // 0.5 if (data != 0)
   //     $display("ERROR! Contador NO está a 0!");
     // else
       // $display("Contador inicializado. OK.");

//# 99 $display("FIN de la simulacion");
//100 $finish;
//end
  //endmodule
end
endmodule