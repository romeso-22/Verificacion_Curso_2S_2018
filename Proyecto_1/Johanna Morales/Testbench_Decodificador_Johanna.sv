// Code your testbench here
// or browse Examples

module test_binario_bcd;
  reg [3:0] bin;
  wire [7:0] bcd;

// Instanciacion del modulo
    binario_bcd DUT (.bin(bin),.bcd(bcd));
  
  
  int i=0,j; 
  logic [11:0] bcd_p;
  logic [7:0] bin_p;

    initial begin
      bin = 0;


//Ciclo para verificar todas las combinaciones 
      while(j<=15)
        begin
        	bin = j; 
            bin_p= j;
          $display("Numero en binario= %0b  Numero binario verificacion=%0b",bin,bin_p);
      
          	i=0;
            bcd_p = 0; 

//Implementacion del algoritmo
              while (i <= 7) 
                begin
                  bcd_p = {bcd_p[10:0],bin_p[7-i]}; 
                    if(i < 7 && bcd_p[3:0] > 4) 
                        bcd_p[3:0] = bcd_p[3:0] + 3;
                    if(i < 7 && bcd_p[7:4] > 4)
                        bcd_p[7:4] = bcd_p[7:4] + 3;
                    if(i < 7 && bcd_p[11:8] > 4)
                        bcd_p[11:8] = bcd_p[11:8] + 3;  
                	i++;
                end
                #10;
            if(bcd==bcd_p[7:0])
            begin
              $display("Valor BCD= %0b Dato de control= %0b *Dato correcto*", bcd_p, bcd);
            end
          else
            begin
              $display("Valor BCD= %0b %0b *Dato incorrecto*", bcd_p, bcd);
            end
          j++;
            #30; 
        end 
    end
      
endmodule
