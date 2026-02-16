`timescale 1ns/100ps
module tb_1100;
  reg clk,rst,x;
  wire z;
  
  sequence_1100 uut(clk,rst,x,z);
  always #5 clk= ~clk;
  initial begin
    clk=0; rst=1;x=0; #10;
    rst=0;
    
    //01100110010
    x=0; #10;
    x=1; #10;
    x=1; #10;
    x=0; #10;
    x=0; #10;
    x=1; #10;
    x=1; #10;
    x=0; #10;
    x=0; #10;
    x=1; #10;
    x=0; #10;
    
  end
endmodule 
    
    
