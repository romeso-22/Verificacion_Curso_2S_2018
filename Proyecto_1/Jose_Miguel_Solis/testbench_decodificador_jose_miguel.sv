module testdeco();
  
  // Declaracion de entradas
  logic[3:0] a;
  logic enable;
  

  
  // Declaracion de salidas
  
  logic[7:0] b;
  
  deco4 uut (.a(a), .b(b), .enable(enable));
  
  
  initial begin
  
    enable = 1;
    a= 4'b0000;
    # 100;
    if (b == 8'b0000_0000)
      $display ("Test 1  pass");
    else 
      $display ("Test 1  fail");
    
    # 100;
    enable = 1;
    a= 4'b0001;
    # 100;
    if (b == 8'b0000_0001)
      $display ("Test 2  pass");
    else 
      $display ("Test 2  fail");
    
    # 100;
    enable = 1;
    a= 4'b0010;
    # 100;
    if (b == 8'b0000_0010)
      $display ("Test 3  pass");
    else 
      $display ("Test 3  fail");
    
    # 100;
    enable = 1;
    a= 4'b0011;
    # 100;
    if (b == 8'b0000_0011)
      $display ("Test 4  pass");
    else 
      $display ("Test 4  fail");
 
    # 100;
    enable = 1;
    a= 4'b0100;
    # 100;
    if (b == 8'b0000_0100)
      $display ("Test 5  pass");
    else 
      $display ("Test 5  fail");
  
    # 100;
    enable = 1;
    a= 4'b0101;
    # 100;
    if (b == 8'b0000_0101)
      $display ("Test 6  pass");
    else 
      $display ("Test 6  fail");
 
    # 100;
    enable = 1;
    a= 4'b0110;
    # 100;
    if (b == 8'b0000_0110)
      $display ("Test 7  pass");
    else 
      $display ("Test 7  fail");
  
    # 100;
    enable = 1;
    a= 4'b0111;
    # 100;
    if (b == 8'b0000_0111)
      $display ("Test 8  pass");
    else 
      $display ("Test 8  fail");
 
    # 100;
    enable = 1;
    a= 4'b1000;
    # 100;
    if (b == 8'b0000_1000)
      $display ("Test 9  pass");
    else 
      $display ("Test 9  fail");
 
    # 100;
    enable = 1;
    a= 4'b1001;
    # 100;
    if (b == 8'b0000_1001)
      $display ("Test 10 pass");
    else 
      $display ("Test 10 fail");
  
    # 100;
    enable = 1;
    a= 4'b1010;
    # 100;
    if (b == 8'b0001_0000)
      $display ("Test 11 pass");
    else 
      $display ("Test 11 fail");
    
    # 100;
    enable = 1;
    a= 4'b1011;
    # 100;
    if (b == 8'b0001_0001)
      $display ("Test 12 pass");
    else 
      $display ("Test 12 fail");

    # 100;
    enable = 1;
    a= 4'b1100;
    # 100;
    if (b == 8'b0001_0010)
      $display ("Test 13 pass");
    else 
      $display ("Test 13 fail");
   
    # 100;
    enable = 1;
    a= 4'b1101;
    # 100;
    if (b == 8'b0001_0011)
      $display ("Test 14 pass");
    else 
      $display ("Test 14 fail");
 
    # 100;
    enable = 1;
    a= 4'b1110;
    # 100;
    if (b == 8'b0001_0100)
      $display ("Test 15 pass");
    else 
      $display ("Test 15 fail");
   
    # 100;
    enable = 1;
    a= 4'b1111;
    # 100;
    if (b == 8'b0001_0101)
      $display ("Test 16 pass Sucessfully Self-Cheking TestBench");
    else 
      $display ("Test 16 fail Sucessfully Self-Cheking TestBench1");
      
  end
  
endmodule
    
 
