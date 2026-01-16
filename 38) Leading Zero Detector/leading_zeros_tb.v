`timescale 1ns/100ps
module leading_zeros_tb;
parameter w = 8;
reg [w-1:0] a;
wire [$clog2(w+1)-1:0] count;

leading_zeros #(w) uut (a,count);
initial begin 

a=8'b00000000; #10;
a=8'b00000001; #10;
a=8'b00000010; #10;
a=8'b00000011; #10;
a=8'b00000100; #10;
a=8'b00010110; #10;
a=8'b10001000; #10;
a=8'b00100100; #10;

end
endmodule
