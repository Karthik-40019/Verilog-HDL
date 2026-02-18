`timescale 1ns/100ps
module tb_1101;
  reg clk,rst,x;
  wire z;
  sequence_1101 uut(clk,rst,x,z);
  
  always #5 clk=~clk;
  initial begin 
    clk=0;rst=1; x=0; #10;
    rst=0;

    //1101101101
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
  end
endmodule

    
    
    
    
