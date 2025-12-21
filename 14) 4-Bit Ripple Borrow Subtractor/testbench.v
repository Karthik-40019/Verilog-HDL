`timescale 1ns/100ps

module rippleBorrSub_tb;

reg [3:0] a,b;
reg bin;
wire [3:0] diff;
wire bout;

ripple_borr_sub_4bit uut(a,b,bin,diff,bout);

initial begin 

a=4'b0000;b=4'b0000;bin=1;#10;
a=4'b1000;b=4'b0011;bin=0;#10;
a=4'b0110;b=4'b0010;bin=0;#10;
a=4'b0111;b=4'b0111;bin=1;#10;
a=4'b0101;b=4'b0011;bin=0;#10;

end
endmodule
