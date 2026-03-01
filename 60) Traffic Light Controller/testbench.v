`timescale 1ns/100ps

module TLC_TB;
  reg clk,clear,x;
  wire [1:0] hwy,cntry;
  
  TLC uut(hwy,cntry,x,clk,clear);
  
  always #5 clk=~clk;
  initial begin 
    clk=0; clear=1; x=0;
    #12 clear=0;
    
    #50;
    x=1; #100;
    x=0; #80;
    x=0;#80;
    
    $finish;
  end
  
  initial begin
    $monitor("time=%0t clk=%b clear=%b x=%b hwy=%d cntry=%d state=%d",$time,clk,clear,x,hwy,cntry,uut.state);
    //displaying the content on terminal is optional, you can verify it through waveform 
  end
endmodule

    
    
