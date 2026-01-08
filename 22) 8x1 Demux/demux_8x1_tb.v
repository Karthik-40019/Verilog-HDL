`timescale 1ns/100ps
module demux_8x1_tb;
reg d;
reg [2:0]s;
wire [7:0]y;

demux_8x1 uut(d,s,y);
initial begin 
 
s=3'b000; d=1; #10;
s=3'b001; d=1; #10;
s=3'b010; d=1; #10;
s=3'b011; d=1; #10;
s=3'b100; d=1; #10;
s=3'b101; d=1; #10;
s=3'b110; d=1; #10;
s=3'b111; d=1; #10;

end
endmodule

