// Code your design here
module deco(bin,BCD);
  input [3:0]bin;
  output reg [7:0]BCD;
  always @(*)
  begin
    case (bin)
      4'd0   : BCD = 8'b00000000;
      4'd1   : BCD = 8'b00000001;
      4'd2   : BCD = 8'b00000010;
      4'd3   : BCD = 8'b00000011;
      4'd4   : BCD = 8'b00000100;
      4'd5   : BCD = 8'b00000101;
      4'd6   : BCD = 8'b00000110;
      4'd7   : BCD = 8'b00000111;
      4'd8   : BCD = 8'b00001000;
      4'd9   : BCD = 8'b00001001;
      4'd10  : BCD = 8'b00010000;
      4'd11  : BCD = 8'b00010001;
      4'd12  : BCD = 8'b00010010;
      4'd13  : BCD = 8'b00010011;
      4'd14  : BCD = 8'b00010100;
      4'd15  : BCD = 8'b00010101;
      default : BCD = 7'b1111111; 
    endcase
  end
  
  // Posibles escenarios
  //Corroborar que las salidas si coincidan con los valores de entrada
  // corroborar el default, cuando se le mete un dato que no sea aceptable
  //
  
endmodule