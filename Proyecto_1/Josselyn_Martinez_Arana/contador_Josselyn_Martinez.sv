// Code your design here
module contador(
  input clk,
  input rst,
  input updown,
  output cont
);

  reg [7:0] cont=8'b0;
  
  always @(posedge clk)
    begin
      if (rst)
        cont=8'b0;
      else if (updown==1'b1) //updown = 1 el contador crece
        cont=cont+4'h1;
      else if (updown==1'b0) //updown = 0 el contador decrece
        cont=cont-4'h1;
    end
  
endmodule


  
