
module tb_count();
  reg clk;
  reg rst;
  reg crt;
  wire [7:0] val;
  
  count  c0 (.clk(clk),.rst(rst),.val(val),.crt(crt));

  int a;
  initial begin

    rst = 1'd1;#10;
    
    crt = 1'd1;#10;   
    #30;
    rst = 1'd0;#80;
    $display("---------------------------------------------------");
    $display("         Prueba de contador de 0 a 255");
    $display("...");
    $display("..");
    $display(".");
    a=0;
    
    while (a <256)
      begin   
        if (a==val)
          begin
            $display("Dato correcto val= %0d a= %0d",val,a);
          end
        else
          begin
            $display("Dato incorrecto val= %0d a= %0d",val,a);      
          end
        #10 clk = 1'd1;
        #10 clk = ~clk;
        a++;
      end
    $display("                Prueba Finalizada");
    $display("---------------------------------------------------");
    $display("          Prueba de contador de 255 a 0");
    $display("---------------------------------------------------");
    $display("...");
    $display("..");
    $display(".");
       crt = 1'd0;#10;
        a = 256;
    while (a>=0 )
      begin   
        if (a==val)
          begin
            $display("Dato correcto val= %0d a= %0d",val,a);
          end
        else
          begin
            $display("Dato incorrecto val= %0d a= %0d",val,a);      
          end
        #10 clk = 1'd1;
        #10 clk = ~clk;
        a--;
      end
    
    $display("                Prueba Finalizada");
    $display("---------------------------------------------------");
  end
  
endmodule