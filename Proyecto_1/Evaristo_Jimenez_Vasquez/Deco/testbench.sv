// Code your testbench here
// or browse Examples
module testbench;
  logic [3:0]bin;
  logic [7:0]BCD;
  logic [7:0] arreglo [0:15];
// instantiate device under test
deco  DUT(.bin(bin), .BCD(BCD));
// apply inputs one at a time
initial begin
  arreglo = {
             8'b00000000,
             8'b00000001,
             8'b00000010,
             8'b00000011,
             8'b00000100,
             8'b00000101,
             8'b00000110,
             8'b00000111,
             8'b00001000,
             8'b00001001,
             8'b00010000,
             8'b00010001,
             8'b00010010,
             8'b00010011,
             8'b00010100,
   			 8'b00010101};
  for(int i = 0;i<=15;i = i + 1)
    begin
        bin = i;  #10 // apply input, wait
        if (BCD !== arreglo[i]) $display("%d fallo.",arreglo[i]); // check  
    end
  $display("\n\nTest complete successfully...\n\n");
end
endmodule