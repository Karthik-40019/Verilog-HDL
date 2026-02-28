`timescale 1ns/100ps
module tb_nov_0101;
  reg clk,rst,x;
  wire z;
  
  mealy_nov_0101 uut(clk,rst,x,z);
  always #5 clk=~clk;
  
  initial begin 
    clk=1; rst=1; #10;
    rst=0;
    
    //010101001010
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    
  end
endmodule
