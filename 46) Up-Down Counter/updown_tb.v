`timescale 1ns/100ps 
module updown_tb;
reg clk,rst;
wire [3:0] q;

counter_updown uut(clk,rst,q);
always #5 clk = ~clk;
initial begin 
clk=0; rst=1; #10;
rst=0;
end
endmodule 
