`timescale 1ns/100ps
module binToGray_tb;
reg [3:0] b;
wire [3:0] g;

binary_to_gray uut(b,g);
initial begin 
     b = 4'b1011; #10;
     b = 4'b1110; #10;
     b = 4'b1001; #10;
     b = 4'b1111; #10;
end
endmodule
