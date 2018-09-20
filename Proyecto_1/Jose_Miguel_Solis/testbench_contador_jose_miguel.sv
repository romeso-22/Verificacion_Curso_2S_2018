// Code your testbench here
// or browse Examples

// Definicion del  modulo
module test_contador ();
  logic clk, reset, mode;
  logic [7:0] q;
  
  
  
  contador uut (.clk(clk), .reset(reset), .q(q), .mode(mode));
  
  int a=0;
  int d=0;
  initial begin
      clk=0;
    # 10;
      clk=1; 
    # 10;
      reset = 1; 
    # 10;
    clk=0;
    # 10;
      clk=1; 
    # 10;
    $display("Reset = %b Contador = %b",reset,q);
      reset = 0; 
    # 10;
      mode=0;

      clk=0; 
    # 10;
      while ( a <= 255)
      begin
        
        
        
        if (q==a)
          begin
            $display("%d = %d  Test %d pass",a,q,d);
          end
        else
          begin 
            $display("%d != %d Test %d fail",a,q,d);
          end
        a=a+1;
        d=d+1;
		clk =1;
        # 10;
        clk=0;
        # 10;
      end
  end
 
    
endmodule
    
    
    
  
