// Code your testbench here
// or browse Examples

module testbench_cont();
  
reg clk;
reg rst;
reg updown;
wire [7:0] cont;
  
  contador DUT (
    .clk(clk),
    .rst(rst),
    .updown(updown),
    .cont(cont)
  );
  
  int contador_real=0;
  
  
  initial begin 
    
    $display("                   ");
    
    #10;
    rst=1'b1;
    $display("reset=%0d",rst);
    
    #30;
    rst=1'b0;

    $display("reset=%0d",rst);
    updown=1'b1;
    
    $display("*******************");
    $display("                   ");
    $display("cont	contador_real");
    $display("up=%0d",cont,contador_real);
    
    while (cont<256)
      begin
        #10 clk=1'b1;
        #10 clk=~clk;
		contador_real++;
        $display("up=%0d",cont,contador_real);
        if (cont==255)
          break;
      end
    updown=1'b0;
    while (cont>=0)
      begin
      	#10 clk=1'b1;
        #10 clk=~clk;
        contador_real--;
        $display("down=%0d",cont, contador_real);
        if (cont==0)
          break;
      end

  end
endmodule

  
  
         
