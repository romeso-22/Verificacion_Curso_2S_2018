// Code your design here

module bcd_to_seg(bcd,seg);
  input [3:0] bcd;
  output reg [7:0] seg;
  
  always@(bcd)
  begin
    case(bcd)
      4'd0   : seg = 8'b00000000;
      4'd1   : seg = 8'b00000001;
      4'd2   : seg = 8'b00000010;
      4'd3   : seg = 8'b00000011;
      4'd4   : seg = 8'b00000100;
      4'd5   : seg = 8'b00000101;
      4'd6   : seg = 8'b00000110;
      4'd7   : seg = 8'b00000111;
      4'd8   : seg = 8'b00001000;
      4'd9   : seg = 8'b00001001;
      4'd10  : seg = 8'b00010000;
      4'd11  : seg = 8'b00010001;
      4'd12  : seg = 8'b00010010;
      4'd13  : seg = 8'b00010011;
      4'd14  : seg = 8'b00010100;
      4'd15  : seg = 8'b00010101;    
      default : seg=8'bx;
    endcase
  end
endmodule