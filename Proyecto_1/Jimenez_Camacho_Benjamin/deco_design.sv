// Inicio del decodificador BCD a 7 segmentos
module bcd7seg(
     bcd, // entrada en formato bcd, 1 digito
     seg // salida siete segmentos
    );
     
// Declarar entradas, salidas y variables internas.
  input [3:0] bcd; // 4 bits, 1 digito
  output [6:0] seg; // 7 bits del siete seg
  reg [6:0] seg; 

// Un bloque always para convertir el dígito bcd en formato de 7 segmentos
    always @(bcd)
    begin
      case (bcd) // declaración de casos
            0 : seg = 7'b0000001;
            1 : seg = 7'b1001111;
            2 : seg = 7'b0010010;
            3 : seg = 7'b0000110;
            4 : seg = 7'b1001100;
            5 : seg = 7'b0100100;
            6 : seg = 7'b0100000;
            7 : seg = 7'b0001111;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0000100;
          // desactiva el carácter de 7 segmentos cuando el dígito bcd no es un número decimal.
            default : seg = 7'b1111111; 
        endcase
    end
    
endmodule
