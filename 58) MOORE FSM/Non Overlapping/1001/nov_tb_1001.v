`timescale 1ns/100ps
module tb_nov_1001;
  reg clk,rst,x;
  wire z;
  
  nov_sequence_1001 uut(clk,rst,x,z);
  always #5 clk=~clk;
  initial begin
    clk=0;rst=1;x=0;#10;
    rst=0;

    //Sequence: 0100100101001
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=1;#10;
    x=0;#10;
    x=0;#10;
    x=1;#10;
  end
endmodule

    
    
  
  
