module contador_testbench;
  bit clk, rst_n, enable, updown;
  logic [7:0] count;
  
int i;
int count_num = 20; //constante para definir las iteraciones en la impresion de los resultados del contador 
  
initial forever #5 clk = ~clk; // Senal de reloj cada 5 ticks
  
  initial begin
    repeat(5) @(posedge clk);
    rst_n 		<= 1'b1;   // el reset esta activo por 5 ciclos de reloj
    if ( count==0)
      $display("Reset activo \t hasta el tiempo @ %0t",$time(),"ns");  // si la cuenta es 0 quiere la senal de reset esta en alto 

    
    //Cuenta ascedente//
    
    updown		<= 1'b1; // activa cuenta ascendente
 
 // ciclo de cuenta ascedente, repite         
    repeat(count_num) begin
      @(posedge clk);
      if (updown==1 )
      $display("Reset desactivado e inicio cuenta ascendente \t en el tiempo @ %0t",$time(),"ns");  
      // condicional para habilitar y deshabilitar el conteo e imprimir el resultado
      if (i==count_num-1)begin
      	enable 	<= 1'b0;
      end
      else begin
      	enable 	<= 1'b1;       
      end
      $display("Cuenta :: %0h",count);
      @(posedge clk);
      enable 	<= 1'b0;
      i++;
    end

        //Cuenta descedente//
    updown 		<= 1'b0;
    repeat(count_num) begin
      @(posedge clk);
      if (updown==0 )
              $display("Reset desactivado e inicio cuenta descendente \t en el tiempo @ %0t",$time(),"ns");  
      
      if (i==1)begin
      	enable 	<= 1'b0;
      end
      else begin
      	enable 	<= 1'b1;       
      end
      $display("Cuenta :: %0h",count);
      @(posedge clk);
      enable 	<= 1'b0;
      i--;
    end
    
    #10 $finish;
  end
  
 // para poder observar la forma de onda 
  // en la opcion "Open EPWave after run"
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars;
  end
 //Instanciación del DUT 
  contador DUT (
              .clk		(clk),
              .reset	(rst_n),
    		  .en		(enable),
              .up_down	(updown),
              .count	(count)
  			);
endmodule

  
  