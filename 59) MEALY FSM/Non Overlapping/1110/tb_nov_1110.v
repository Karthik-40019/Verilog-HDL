`timescale 1ns/100ps
module tb_nov_1110;
  reg clk,rst,x;
  wire z;
  
  seq_nov_1110 uut(clk,rst,x,z);
  always #5 clk=~clk;
  initial begin 
    clk=1; rst=1; #10;
    rst=0;

    //01110011101
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=0;#10;
    x=1;#10;
    x=1;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
  end
endmodule
