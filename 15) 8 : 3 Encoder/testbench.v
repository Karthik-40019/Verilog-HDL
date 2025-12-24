`timescale 1ns/100ps

module encoder_tb;
reg [7:0] a;
wire [2:0] y;

Encoder_8to3 uut(a,y);

initial begin 

a=8'b00000000;#10;
a=8'b00000001;#10;
a=8'b00000010;#10;
a=8'b00000100;#10;
a=8'b00001000;#10;
a=8'b00010000;#10;
a=8'b00100000;#10;
a=8'b01000000;#10;
a=8'b10000000;#10;

end
endmodule

