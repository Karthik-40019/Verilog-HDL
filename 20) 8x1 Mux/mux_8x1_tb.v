`timescale 1ns/100ps
module mux_8x1_tb;
reg [7:0]a;
reg [2:0]s;
wire y;

 mux_8x1 uut(a,s,y);
initial begin 

a=8'b11001010;

s=3'b000;#10;
s=3'b001;#10;
s=3'b010;#10;
s=3'b011;#10;
s=3'b100;#10;
s=3'b101;#10;
s=3'b110;#10;
s=3'b111;#10;

end
endmodule
