`timescale 1ns/100ps 
module barrel_shifter_tb;
reg [7:0] a;
reg [2:0] s;
reg dir;
wire [7:0] y;

barrel_shifter uut(a,s,dir,y);
initial begin 

a = 8'b10010111; s = 3'b000; dir = 0; #10;
a = 8'b10010111; s = 3'b011; dir = 0; #10;
a = 8'b10010111; s = 3'b101; dir = 0; #10;
a = 8'b10010111; s = 3'b111; dir = 0; #10;

a = 8'b01101011; s = 3'b000; dir = 1; #10;
a = 8'b01101011; s = 3'b010; dir = 1; #10;
a = 8'b01101011; s = 3'b100; dir = 1; #10;
a = 8'b01101011; s = 3'b110; dir = 1; #10;

end
endmodule

