`timescale 1ns/100ps 
module leftShift_tb;
parameter w=8;
reg [w-1:0] a;
reg [2:0] n;
wire [w-1:0] y;

left_shift #(w) uut(a,n,y);

initial begin 

a=8'b11001100; n=3'b011; #10;
a=8'b00110011; n=3'b010; #10;
a=8'b01110101; n=3'b001; #10;
a=8'b01111011; n=3'b011; #10;

end
endmodule
