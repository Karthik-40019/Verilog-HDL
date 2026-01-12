`timescale 1ns/100ps

module grayToBin_tb;
reg [3:0] g;
wire [3:0] b;

gray_to_bin uut(g,b);
initial begin 
g = 4'b1110; #10;
g = 4'b1001; #10;
g = 4'b1101; #10;
g = 4'b1000; #10;

end
endmodule
