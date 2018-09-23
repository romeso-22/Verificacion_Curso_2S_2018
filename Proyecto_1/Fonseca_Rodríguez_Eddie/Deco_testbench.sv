// Code your testbench here
// or browse Examples

`timescale 1ns / 1ps

module stimulus_2;
    
  //Input
  
  // Output
  logic[3:0] binario=0;
  
   // Generate Block, Verilog-2001
   // Instantiate the Decoder (named DUT {device under test})
    
  CONVERTIDOR_BINARIO_A_BCD_4_BITS stimulus_2(binario);
    
initial
begin
#10 binario = 4'b0000;  
#10 binario = 4'b0001;
#10 binario = 4'b0010;
#10 binario = 4'b0011;
#10 binario = 4'b0100;
#10 binario = 4'b0101;
#10 binario = 4'b0110;
#10 binario = 4'b0111;
#10 binario = 4'b1000;
#10 binario = 4'b1001;
#10 binario = 4'b1010;
#10 binario = 4'b1011;
#10 binario = 4'b1100;
#10 binario = 4'b1101;
#10 binario = 4'b1110;
#10 binario = 4'b1111;
#10 binario = 4'b0000;
#10 binario = 4'b0001;
end

initial 
begin
$dumpfile("test.vcd");
$dumpvars(0,stimulus_2);
end
 
endmodule