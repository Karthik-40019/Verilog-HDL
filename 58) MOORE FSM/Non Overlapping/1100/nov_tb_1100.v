`timescale 1ns/100ps
module nov_tb_1100;
  reg clk,rst,x;
  wire z;
  
  nov_sequence_1100 uut(clk,rst,x,z);
  always #5 clk=~clk;
  initial begin 
    clk=1; rst=1; x=0;
    rst=0;
    
    //011001011001
    x=0; #10;
    x=1; #10;
    x=1; #10;
    x=0; #10;
    x=0; #10;
    x=1; #10;
    x=0; #10;
    x=1; #10;
    x=1; #10;
    x=0; #10;
    x=0; #10;
    x=1; #10;
  end
endmodule
