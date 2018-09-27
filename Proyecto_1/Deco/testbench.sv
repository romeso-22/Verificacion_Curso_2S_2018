`timescale 1ns/1ns
module tb();
 	reg clk, rst; 
  	reg [7:0] expe;
  	reg [3:0] bin_in;
  	wire [7:0] bcd;
  
  reg [31:0] vectornum, errors; // Variables de 32 bits
  reg [11:0] testvectors[99:0];// Memoria 12 bis 100 espacios
  
// DUT
  
  deco_7_seg dut(.bin_in(bin_in),.bcd(bcd));

  always // no sensitivity list, so it always executes
	begin
		clk = 1; #5; clk = 0; #5; // 10ns period
	end
  
  //Cargar vectores del archivo de texto
  initial
    begin
      $readmemb("codigos", testvectors );
      vectornum=0;
      errors=0;
      rst=1; #27 rst=0;
    end
  
  always@(posedge clk)
    begin
      #1; {bin_in, expe}=testvectors[vectornum];
    end  
  
always @(negedge clk)
  if (~rst) // skip during reset
begin
  if (bcd !== expe)
begin
  $display("Error: Entrada binaria = %b", {bin_in});
  $display(" Salida = %b (%b esperada)",bcd,expe);
errors = errors + 1;
end  

  // increment array index and read next testvector
vectornum = vectornum + 1;
  if (testvectors[vectornum] === 12'bx)
begin
  $display("%d tests completados con %d errores",
vectornum, errors);
$finish; // End simulation
end
  
  if (errors==0 && vectornum==15)
	begin
      $display("Test completado a la perfección");
  	end 
  
end
  
 /* 
  if (errors == 0)
	begin
      $display("Test completado a la perfeccion")
  	end
  */

endmodule
