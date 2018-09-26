module tb_BCD();
  reg [3:0] Data_in;
  wire [7:0] Data_out;
  
  BCD unit(.Data_in(Data_in),.Data_out(Data_out));
  
  reg [3:0] inferior;
  assign inferior = Data_out[3:0];
  
  int count = 0;
  initial begin
    Data_in = 4'b0000;#10;
    
    $display("---------------------------------------------------------------");
    $display("                      Prueba de uso del BCD");
    $display("...");
    $display("..");
    $display(".");
    while (count <16)
      begin 
        Data_in++;#10;
        if(Data_in <10)
          begin
        if (Data_in == inferior)
          $display("Dato correcto entrada=%04b Salida=%08b",Data_in,Data_out);
        else if (Data_in != inferior)
          $display("Dato incorrecto entrada=%04b Salida=%08b",Data_in,Data_out);
        count++;#10;
          end
        if(Data_in>9)
          begin
            if ((Data_in-8'd10) == inferior)
              $display("Dato correcto entrada=%04b Salida=%08b",Data_in,Data_out);
            else if ((Data_in-8'd10) != inferior)
              $display("Dato incorrecto entrada=%04b Salida=%08b",Data_in,Data_out);
        count++;#10;
          end
      end
    $display("................................................................");
    $display("                         Prueba finalizada");
    $display("----------------------------------------------------------------");
  end
endmodule