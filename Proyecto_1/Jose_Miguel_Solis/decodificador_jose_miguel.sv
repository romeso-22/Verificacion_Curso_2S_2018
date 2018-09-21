// Code your design here

module deco4 (a,b,enable);
  
  input[3:0] a;
  input enable;
  output[7:0] b;
 
  
  assign b =
    
    (a == 4'b0000 && enable == 1 ) ? 8'b0000_0000 : //0
    (a == 4'b0001 && enable == 1 ) ? 8'b0000_0001 : //1
    (a == 4'b0010 && enable == 1 ) ? 8'b0000_0010 :	//2	
    (a == 4'b0011 && enable == 1 ) ? 8'b0000_0011 :	//3
    (a == 4'b0100 && enable == 1 ) ? 8'b0000_0100 :	//4
    (a == 4'b0101 && enable == 1 ) ? 8'b0000_0101 :	//5
    (a == 4'b0110 && enable == 1 ) ? 8'b0000_0110 :	//6
    (a == 4'b0111 && enable == 1 ) ? 8'b0000_0111 :	//7
    (a == 4'b1000 && enable == 1 ) ? 8'b0000_1000 :	//8
    (a == 4'b1001 && enable == 1 ) ? 8'b0000_1001 :	//9
    (a == 4'b1010 && enable == 1 ) ? 8'b0001_0000 :	//10
    (a == 4'b1011 && enable == 1 ) ? 8'b0001_0001 :	//11 A
    (a == 4'b1100 && enable == 1 ) ? 8'b0001_0010 :	//12 B
    (a == 4'b1101 && enable == 1 ) ? 8'b0001_0011 :	//13 C
    (a == 4'b1110 && enable == 1 ) ? 8'b0001_0100 :	//14 D
    (a == 4'b1111 && enable == 1 ) ? 8'b0001_0101 :	//15 E
    8'bz ;
         
endmodule


  



