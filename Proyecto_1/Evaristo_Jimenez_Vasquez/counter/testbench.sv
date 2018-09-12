module testbench;
  logic clk,reset,up_down,enable;
  logic [7:0]out;
  logic [7:0]creciente; //contador interno que simula el contador original hacia arriba
  logic [7:0]decreciente; //contador interno que simula el contador original hacia abajo
  logic [1:0]test; // variable interna para determinar cual test realizar
  int n; // variable para controlar los delays
  
  
  counter DUT(.clk(clk), .reset(reset), .up_down(up_down), .out(out), .enable(enable));
 
  //Inicializacion de variables.//
  
  initial begin
    clk =0;
    reset =1;#20
    reset =0;
    enable = 0;
    test = 0;
    creciente = 0;
    decreciente = 0;
    n=0;
    #10;
  end  
  
  
  always begin
 	#5  clk = ~clk; 
  end
  // generación de variables internas para comparar el contador
  always@(posedge clk) begin
    if (enable && up_down)creciente = creciente + 1 ;
    else if (enable && !up_down)decreciente = decreciente - 1;
  end
 
  // inicio de los diferentes escenarios
  
  always @(posedge clk) begin   
    
    case(test)
    
    0: 	// corroboramos que el contador se reinicie cuando el reset este en 0
      begin 
      
        repeat(10) begin 
            reset =1;#20
            reset =0;
            enable = 0;
            creciente = 0;
            #10;
          enable = 1'b1;
          n = 10*($urandom%500); //genero un valor aleatorio
          up_down = 1'b1; #n   // espero n cantidad de tiempo para que se realice un conteo 
          reset = 1'b1;	#15 // aplico el reset
          if (out !== 8'd0) begin //si reset no se cumple
            $display("\n\n\nReset fallo...\n\n\n");
            test = test + 1 ; // se avanza a la siguiente prueba
          end
           break;
        end
        if (test == 0) begin
        	$display("\n\n\n Reset funciona correctamente.\n\n\n");
          	test = test + 1 ;end
   	end	
    
      1 :  // corroborar el funcionamiento del enable   
        begin  
          repeat(10) begin
              reset =1;#20
              reset =0;
              enable = 0;
              creciente = 0;
              #10;
              up_down = 1'b1; 
              enable = 1'b1;
              n = 10*$urandom%500;#n // tiempo que permitira contar hasta un tiempo random
              enable = 1'b0;	#30
            if (out !== creciente)  
              begin $display("\n\n\n Enable fallo.\n\n\n "); // se compara el modulo del contador con un contador interno creado en el test
                test = test + 1;end
           break;
             end
          if (test == 1) begin
          	$display("\n\n\n Enable funciona correctamente..\n\n\n ");
            test = test + 1 ;end
        end
       2'd2 :  // corroborar el funcionamiento del contador hacia arriba
        begin  
          repeat(10) begin
            reset =1;#20
            reset =0;
            enable = 0;
            creciente = 0;
            #10;
            up_down = 1'b1; 
            enable = 1'b1;
            n = 10*$urandom%500; // variable que controlara el conteo del modulo
            #n
            if (out !== creciente)  begin
              $display("\n\n\nNo cuenta bien hacia arriba.\n\n\n"); // se compara el modulo del contador con un contador interno creado en el test
           		test = test + 1 ;
            end
            break;
             end
          if (test == 2) begin
          	$display("\n\n\nCuenta bien hacia arriba...\n\n\n");
            test = test + 1 ;end
        end
       2'd3 :  // corroborar el funcionamiento del contador hacia abajo
        begin  
          repeat(10) begin
            reset =1;#20
            reset =0;
            enable = 0;
            decreciente = 0;
            #10;
            up_down = 1'b0; 
            enable = 1'b1;
            n = 10*$urandom%500; // variable que controlara el conteo del modulo
            #n
            if (out !== decreciente)  begin
              $display("\n\n\nNo cuenta bien hacia abajo.\n\n\n"); // se compara el modulo del contador con un contador interno creado en el test
           		$finish;
            end
            break;
             end
          $display("\n\n\nCuenta bien hacia abajo...\n\n\n");
          $finish;
        end
  endcase
    end
 
  endmodule
      
      