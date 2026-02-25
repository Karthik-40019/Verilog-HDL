`timescale 1ns/100ps
module mealy_tb_1011;
  reg clk,rst,x;
  wire z;
  
  mealy_sequence_1011 uut(clk,rst,x,z);
  always #5 clk=~clk;
  initial begin
    clk=0; rst=1; #10;
    rst=0;

    //0101101101101111....1
    x=0;#10;
    x=1;#10;
    x=0;#10;
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
  
