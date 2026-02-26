`timescale 1ns/100ps
module nov_tb_1101;
  reg clk,rst,x;
  wire z;
  
  nov_sequence_1101 uut(clk,rst,x,z);
  always #5 clk=~clk;
  initial begin
    clk=1;rst=1; x=0; #10;
    rst=0; 
    
    //01101101011010
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
  end
endmodule 
    
    
    
    
