`timescale 1ns/100ps
module siso_tb;
reg clk,rst;
reg sin;
wire sout;

siso uut(clk,rst,sin,sout);
always #5 clk=~clk;
initial begin 
clk=0; rst=1; sin=0; #10;
rst=0; 
  
// 1011
sin=1; #10;
sin=0; #10;
sin=1; #10;
sin=1; #10;
  
// extra bits
sin=0; #10;
sin=1; #10;

end
endmodule
