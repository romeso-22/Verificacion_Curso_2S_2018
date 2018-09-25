// Code your design here
// Code your design here
//-----------------------------------------------------
// Design Name : up_down_counter
// File Name   : up_down_counter.v
// Function    : Up down counter
//-----------------------------------------------------
module up_down_counter    (
out      ,  // Output of the counter
up_down  ,  // up_down control for counter
clk      ,  // clock input
reset    ,  // reset input
data	 
);
//----------Output Ports--------------
output reg [7:0] out;
  
//------------Input Ports-------------- 
input [7:0] data;
input up_down, clk, reset;
  
//------------Internal Variables--------
reg [7:0] out;
//-------------Code Starts Here-------
  always @(posedge clk or posedge reset)
begin // active high reset
  if (reset)
    begin 
  		out <= 8'b0 ;
    end
  else
    begin //------------------------
    	if (data)
    		begin
  				out <= out + 1;
			end 
  		else 
    		begin
  				out <= out - 1;
			end
	end //------------------------
end
endmodule 