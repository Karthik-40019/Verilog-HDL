`timescale 1ns/100ps
module demux_2x1_tb;
reg d,s;
wire [1:0]y;

demux_1x2 uut(d,s,y);
initial begin 

d=1;s=0;#10;
d=1;s=1;#10;
d=1;s=0;#10;
d=1;s=1;#10;

end
endmodule
