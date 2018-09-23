// Code your testbench here
// or browse Examples

`timescale 1ns / 1ps

module stimulus;
	// Inputs
  reg CLK,RESET,UP_DOWN;
	// Output
  wire[7:0] OUT;
  
   // Generate Block, Verilog-2001

begin
 Count_Up_Down Instancia_Count_Up_Down(
   .clk(CLK),
   .reset(RESET),
   .up_down(UP_DOWN),
   .out(OUT)
);
end
  
integer i;

initial 
begin

CLK=0;
  for (i=0; i<=900; i=i+1)
  begin
    #5 CLK = ~CLK;
  end
end
  
initial 
begin
$dumpfile("test.vcd");
$dumpvars(1);
 
RESET =0;
UP_DOWN=1;
#1 RESET=1;
#200 RESET=0;
#250 RESET=1;
#300 UP_DOWN=0;  
#300 RESET=0;
end
endmodule