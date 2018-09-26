module up_down_counter(outu, outd, down_up, up_down,clk,reset,data);

input [3:0] data;
input up_down, clk, reset, down_up;
output [3:0] outu, outd;
reg [3:0] outu, outd;

always @(posedge clk or reset)
  begin
    if (reset)
      begin
    	outd <= 4'b0000;
    	outu <= 4'b0000;
      end
    else 
    begin
      	if (up_down) 
    	begin
      		outu <= outu+1;
    	end
      	else if (down_up) //
   		begin //
      		outd <= outd-1; //
    	end //
    end
  end
endmodule 