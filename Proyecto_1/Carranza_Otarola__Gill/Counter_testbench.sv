module testbench_counter();
  reg [3:0] data;
  reg up_down, clk, down_up, reset;
  wire [3:0] outd, outu;

  
  up_down_counter dut(.data(data), .up_down(up_down), .clk(clk), .reset(reset), .outu(outu), .down_up(down_up), .outd(outd));
  
  initial 
    begin
      	down_up=1;
      	up_down=1;
    	clk=0;
        data=4'b0010;
      	#1 reset =1;
      	#1 reset =0;
		#60
       	if (outu==15) $display("CORRECTO!!! ");
        else $display("INCORRECTO X ");
      	$finish;
    end
  
  always 
    begin 
    	#2 clk = ~clk;
    end	
    
endmodule
    