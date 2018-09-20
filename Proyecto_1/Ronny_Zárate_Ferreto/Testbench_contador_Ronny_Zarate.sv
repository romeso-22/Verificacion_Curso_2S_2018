// Code your testbench here
// or browse Examples

module testbench();
reg reset;
reg UpDown;
reg clk;
wire [7:0] cont;
  
  //DUT Instantiation 
  contador DUT(.reset(reset),.UpDown(UpDown),.clk(clk),.cont(cont));
int a;
int b;
initial begin
  $display("-----------------------------------------------------------------");
  $display("Prueba Reset");
  reset=1'd1; #10;
  $display("Valor Reset=%0d",reset);
  $display("Valor del contador=%0d",cont);
  $display("-----------------------------------------------------------------\n");
  #30;
  reset=1'b0; 
  $display("Inicio Prueba cuenta regresiva");
  UpDown=1'd0;
  b=255;
  while(a<=255)
	begin
      	#10 clk = 1'd1;
      	#10 clk = ~clk;
      if (cont==b)
        begin
          $display("Contador= %0d Cuenta control=%0d --> Dato correcto",cont,b);
      	  //$display("\tValue of a=%0d",a);
        end
       else
         begin
          $display("Contador= %0d Cuenta control=%0d",cont,b);
           $display("ERROR");  
      	  $display("\tValue of a=%0d",a);
         end
		a++;
        b--;
	end
  $display("Fin Prueba cuenta regresiva\n");
  $display("-----------------------------------------------------------------\n");
    reset=1'd1; #10;
 	#30;
  	reset=1'b0; 
    UpDown=1'd1;
 	 b=0;
  	 a=0;
  $display("Inicio Prueba cuenta ascendente");
  while(a<=255)
	begin
      if (cont==b)
        begin
          $display("Contador= %0d Cuenta control=%0d --> Dato correcto",cont,b);
        end
       else
         begin
          $display("Contador= %0d Cuenta control=%0d",cont,b);
           $display("ERROR");  
      	  $display("\tValue of a=%0d",a);
         end
		a++;
        b++;
        #10 clk = 1'd1;
      	#10 clk = ~clk;
	end
  $display("Fin Prueba cuenta ascendente");
	$display("-----------------------------------------------------------------");
end   

endmodule //TestBench code end 
