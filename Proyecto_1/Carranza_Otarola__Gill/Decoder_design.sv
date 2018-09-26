module binary2bcd( salida, entrada);
  
  input [15:0] entrada;
  output reg [15:0] salida;
   
  always@(entrada)
  begin
    salida=0;
    begin
      case (entrada)
        16'h0 : salida= 00000000;
        16'h1 : salida= 00000001;
        16'h2 : salida= 00000010;
        16'h3 : salida= 00000011;
        16'h4 : salida= 00000100;
        16'h5 : salida= 00000101;
        16'h6 : salida= 00000110;
        16'h7 : salida= 00000111;
        16'h8 : salida= 00001000;
        16'h9 : salida= 00001001;
        16'hA : salida= 00010000; //A =10
        16'hb : salida= 00010001;
        16'hc : salida= 00010010;
        16'hd : salida= 00010011;
        16'he : salida= 00010100;
        16'hf : salida= 00010101;
      endcase
    end
  end
endmodule
