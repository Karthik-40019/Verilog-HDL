`timescale 1ns/100ps
module seven_seg_tb;
reg [3:0] bcd;
reg cs;
wire [6:0] seg;

seven_segment uut(bcd,cs,seg);

initial begin
cs=0; bcd=0; #10;
cs=1;

bcd = 4'b0000; #10;
bcd = 4'b0001; #10;
bcd = 4'b0010; #10;
bcd = 4'b0011; #10;
bcd = 4'b0100; #10;
bcd = 4'b0101; #10;
bcd = 4'b0110; #10;
bcd = 4'b0111; #10;
bcd = 4'b1000; #10;
bcd = 4'b1001; #10;

end
endmodule

