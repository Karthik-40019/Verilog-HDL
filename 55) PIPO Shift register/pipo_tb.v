`timescale 1ns/100ps 
module pipo_tb;
reg clk,rst;
reg [3:0] p_in;
wire [3:0] p_out;

pipo uut(clk,rst,p_in,p_out);
  
always #5 clk = ~clk;
initial begin 
clk=0; rst=1; p_in=0;#10;
rst=0;

p_in=4'b1001; #10;
p_in=4'b1100; #10;
p_in=4'b0111; #10;

end
endmodule 

