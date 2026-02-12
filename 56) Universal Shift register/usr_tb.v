`timescale 1ns/100ps
module usr_tb;
reg clk,rst;
reg [1:0] sel;
reg s_left,s_right;
reg [3:0] p_in;
wire [3:0] out;

USR uut(clk,rst,sel,s_left,s_right,p_in,out);
always #5 clk = ~clk;
initial begin 
clk=0; rst=1; sel=2'b00; s_left=1'b0; s_right=1'b0; #10;
rst=0;

sel=2'b11; p_in=4'b0100; #10;    //loads data
sel=2'b00; #10;                  // holds data
sel=2'b01; s_left=1'b1; #10;     // shift left 
sel=2'b10; s_right = 1'b1; #10; //shift right
sel=2'b11; p_in=4'b0101; #10;   //loads data
sel=2'b10; s_right=1'b0; #10;   //shift right

end
endmodule
