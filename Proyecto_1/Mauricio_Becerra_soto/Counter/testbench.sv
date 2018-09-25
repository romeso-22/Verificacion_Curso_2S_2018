// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
/*For more info of the code: https://www.youtube.com/watch?v=uICTDQPRZj0
*/
module testbench2();
logic data, up_down, clk, reset;
logic out;
logic counter;
  
// instantiate device under test
  up_down_counter dut(.data(data), .up_down(up_down), .clk(clk), .reset(reset), .out(out));
// apply inputs one at a time
  
  //driver --- estimulos
  initial begin //------------------------
    //Initialize Inputs
    reset = 1; clk = 0;
    data = 0;
    reset=1; 
      #100 //Wait 100ns for global reset to finish
    reset=0;
    data = 1;
    #200
    data = 0;
    #100
    $finish; 
  
  end //------------------------
  always #10 clk = ~clk;
endmodule 