`timescale 1ns/100ps

module mux4x1_2x1_tb;
reg [3:0] a;
reg [1:0] s;
wire y;

mux4x1_2x1 uut(a,s,y);
initial begin 
a=4'b1010;

s=2'b00; #10;
s=2'b01; #10;
s=2'b10; #10;
s=2'b11; #10;

end
endmodule

