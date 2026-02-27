`timescale 1ns/100ps
module mealy_1110;
  reg clk,rst,x;
  wire z;
  
  mealy_seq_1110 uut(clk,rst,x,z);
  always #5clk = ~clk;
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

    
    
