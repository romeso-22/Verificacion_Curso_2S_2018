// Code your testbench here
// or browse Examples

module testbench_deco();
  reg [3:0] DatoEntrada;
  wire [7:0] DatoSalida;
  
  //DUT Instantiation 
  Decodificador DUT(.DatoEntrada(DatoEntrada), .DatoSalida(DatoSalida));
  //Variable declaration
  int error=0, x = 0,a=4;
  int Nerrors[];
  logic [3:0]units=4'd0, tens=4'd0;
  logic [7:0] comparacion;

  
initial begin
  DatoEntrada= 4'h0; #10;
  $display("dato entreda %0d",DatoEntrada);
  $display("\n\n-----------------------------------------------------------------");
  $display("Inicio Prueba Decodificador 4 bits a BCD");

  while(x<=15)
	begin
      if(DatoEntrada<=9)
        begin
          units=DatoEntrada;
          tens=4'd0;
        end
      else if (DatoEntrada>9)
        begin
          units=DatoEntrada-4'd10;
          tens=4'd1;
        end
      comparacion={tens,units};
      
      if (DatoSalida==comparacion)//0
        begin
          $display("Entrada = %40b Salida = %04b %04b -> Correcto\n", DatoEntrada,DatoSalida[7:4],DatoSalida[3:0]);
        end   
       else
         begin
           $display("Entrada = %0h -> **ERROR**\n", DatoEntrada);
           $display("\tLa salida del modulo es %04b %04b mientras que el dato de comparación es %04b %04b\n",DatoSalida[7:4],DatoSalida[3:0],comparacion[7:4],comparacion[3:0]);
           error=error +1;
           Nerrors={Nerrors,x};
         end
		x++;
      	DatoEntrada = DatoEntrada + 4'h1;
      	#20;
	end
    $display("Fin Prueba Decodificador");
    $display("-----------------------------------------------------------------\n");
    $display("Resumen de la prueba:");
    $display("Total de errores: %0d", error);
    $display("En los estados; %p\n\n",Nerrors);
    $finish;



end   

endmodule
