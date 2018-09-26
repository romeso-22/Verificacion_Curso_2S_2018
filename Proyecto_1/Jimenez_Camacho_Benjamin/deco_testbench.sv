 module testdeco;

    reg [3:0] bcd;
    wire [6:0] seg;


    // Instanciar el dispositivo bajo prueba (UUT)
    bcd7seg uut (
        .bcd(bcd), 
        .seg(seg)
    );

 integer i; // variable para el ciclo for     
   
   //Aplicacion de estimulos mediante un ciclo for, que prueba todas las entradas posibles ( 4 bits) 16 posibles combinaciones
    initial begin
       // ciclo for   
      for(i = 0;i < 16;i = i+1) 
        begin
          // se asigna el valor de la variable del ciclo a la entrada
            bcd = i; 
            #10; //espera 10 ns
          $display("Digito bcd: %0b",bcd," ingresado");
         
          // Condicionales que comprueban si el digito bcd ingresado y la salida estan correctos 
          
          if( bcd==0 && seg==7'b0000001 ) // verifica comprobando la entrada bcd 0 con su salida e imprime mensaje que lo confirma
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );

          
 // de la misma forma se aplica para los otros digitos          
          
          if( bcd==1 && seg==7'b1001111 )
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );

                    
          if( bcd==2 &&  seg== 7'b0010010 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );
 
          
          if( bcd==3 &&  seg== 7'b0000110 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" ); 
        
          
          if( bcd==4 &&  seg== 7'b1001100 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );   
          
        
          
          if( bcd==5 &&  seg== 7'b0100100 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );   
          
 
                    
          if( bcd==6 && seg== 7'b0100000 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );
          

          
          if( bcd==7 && seg==7'b0001111 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );  
           
     
          
          if( bcd==8 && seg==7'b0000000) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );  
          

          
          if( bcd==9 && seg==7'b0000100 ) 
            $display("Corresponde a %0h ",seg,"en 7 segmentos de forma correcta" );  
          
   
          
   // Verifica que el digito ingresado no es decimal y ademas sus respectiva salida 7 segmentos es la correcta segun la especificacion
          if( bcd >= 10 && seg==7'b1111111 )
            $display("Digito bcd: %0b",bcd," ingresado no corresponde a un numero decimal");
        
        end     
    end
 
   // para poder observar la forma de onda
   // en la opcion de simulacion "Open EPWave after run"
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars;
  end
   
   
   
endmodule

