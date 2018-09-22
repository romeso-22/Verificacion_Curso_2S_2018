// Code your design here
module DECO( data_in, data_out );
    
 output reg [7:0] data_out;
 input [3:0] data_in;
 
  always @*
   begin
     case (data_in)
 //            bin                    decenas  unidades      						
             4'b0000   : data_out[7:0]  =8'b00000000;
             4'b0001   : data_out[7:0] <= 8'b00000001;
             4'b0010   : data_out[7:0] <= 8'b00000010;
             4'b0011   : data_out[7:0] <= 8'b00000011;
             4'b0100   : data_out[7:0] <= 8'b00000100;
             4'b0101   : data_out[7:0] <= 8'b00000101;
             4'b0110   : data_out[7:0] <= 8'b00000110;
             4'b0111   : data_out[7:0] <= 8'b00000111;
             4'b1000   : data_out[7:0] <= 8'b00001000;
             4'b1001   : data_out[7:0] <= 8'b00001001;
             4'b1010   : data_out[7:0] <= 8'b00010000;
             4'b1011   : data_out[7:0] <= 8'b00010001;
             4'b1100   : data_out[7:0] <= 8'b00010010;
             4'b1101   : data_out[7:0] <= 8'b00010011;
    	 	 4'b1110   : data_out[7:0] <= 8'b00010100;
			 4'b1111   : data_out[7:0] <= 8'b00010101;
             default : data_out[7:0] <= 7'b0000000;
          endcase
   end
endmodule