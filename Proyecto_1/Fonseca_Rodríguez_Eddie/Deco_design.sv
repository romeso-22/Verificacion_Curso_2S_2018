`timescale 1ns / 1ps

module CONVERTIDOR_BINARIO_A_BCD_4_BITS (binario, BCD);
  input [3:0] binario;
  output reg [7:0] BCD;
 

  parameter[7:0] cero   = 8'b00000000;
  parameter[7:0] uno    = 8'b00000001;
  parameter[7:0] dos    = 8'b00000010;
  parameter[7:0] tres   = 8'b00000011;
  parameter[7:0] cuatro = 8'b00000100;
  parameter[7:0] cinco  = 8'b00000101;
  parameter[7:0] seis   = 8'b00000110;
  parameter[7:0] siete  = 8'b00000111;
  parameter[7:0] ocho   = 8'b00001000;
  parameter[7:0] nueve  = 8'b00001001;
  parameter[7:0] diez   = 8'b00010000;
  parameter[7:0] once   = 8'b00010001;
  parameter[7:0] doce   = 8'b00010010;
  parameter[7:0] trece  = 8'b00010011;
  parameter[7:0] catorce = 8'b00010100;
  parameter[7:0] quince = 8'b00010101;
  parameter[7:0] DISABLED = 8'b11111111;



  always @ (binario)
 begin
   case(binario)
    15: BCD = quince;
    14: BCD = catorce;
    13: BCD = trece;
    12: BCD = doce;
    11: BCD = once;
    10: BCD = diez;
     9: BCD = nueve;
     8: BCD = ocho;
     7: BCD = siete;
     6: BCD = seis;
     5: BCD = cinco;
     4: BCD = cuatro;
     3: BCD = tres;
     2: BCD = dos;
     1: BCD = uno;
     0: BCD = cero;
     default: BCD = DISABLED;
  endcase
 end
endmodule