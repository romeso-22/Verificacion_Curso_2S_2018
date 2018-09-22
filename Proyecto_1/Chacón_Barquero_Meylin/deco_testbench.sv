// Code your testbench here
// or browse Examples
module tb_DECO ();
  reg [3:0] data_in;
  wire [7:0] data_out;
  
  
  DECO dut( .data_in(data_in), .data_out(data_out));
  
    int i=0;
    logic [3:0] z = 4'b0;
    logic [3:0] dec = 4'b1, uni=4'd0;
    logic [7:0] compara = 8'b0;
  
  initial begin
    #10;
    data_in=4'd0;
    while (i<=15)
        begin
          uni = data_in - 4'd10;    
          if (data_in<=4'd9)
            compara <= {z[3:0],data_in[3:0]};
          else
            compara <= {dec[3:0],uni[3:0]};
        #10
          if (data_out != compara)
            $display("-->ERROR!. Esperado: %b. Leido: %b",compara, data_out);
          else
            $display("-->CORRECTO!. Esperado: %b. Leido: %b",compara, data_out);
    	i= i+1;
    	data_in = data_in +4'b1;
  
        end
  end
endmodule