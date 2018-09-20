// Code your testbench here
// or browse Examples

module deco_testbench();
  
reg [3:0] data;
wire [7:0] bcd;
  
  deco DUT (
  	.data(data),
  	.bcd(bcd)
  );
  
  int a = 0;
  logic [7:0] prueba;
  int x;
  logic [3:0] cont;
  logic [3:0] cont2;
  logic [3:0] num;
  
  
  initial begin
    cont=4'b0;
    cont2=4'b0;
    data=4'b0; #10;
    
    while (a<=15)
      begin
        
        #10;
        
        //NÚMEROS CON UN DÍGITO
        if (data<=4'd9)
          begin
	        prueba[7:4]=4'b0000;
	        num=data;
         	while (cont<=num)
          		begin
                  prueba[3:0]=cont;
                  cont++;
                end
            $display("Data = %0d Salida= %08b Prueba = %08b" ,data,bcd,prueba);
            if (bcd==prueba)
              $display("CORRECTO");
            else
              $display("ERROR");
          end
        
        //NÚMEROS CON DOS DÍGITOS
        else
          begin
          	prueba[7:4]=4'b0001;
          	x=data-10;
          	while (cont2<=x)
              begin
                prueba[3:0]=cont2;
            	cont2++;
              end
            $display("Data = %0d Salida= %08b Prueba = %08b" ,data,bcd,prueba);
            if (bcd==prueba)
              $display("CORRECTO");
            else
              $display("ERROR");
          end
        data=data+4'd1;
        a++;
        
      end
  end
  
  
endmodule
  
  
  
  

