`timescale 1ns/100ps

module rippleCarry_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

rippleCarry uut(a,b,cin,sum,cout);
initial begin 

a=4'b0000; b=4'b0001; cin=0;#10;
a=4'b0110; b=4'b1001; cin=1;#10;
a=4'b1010; b=4'b1101; cin=1;#10;
a=4'b1100; b=4'b1011; cin=0;#10;
a=4'b0100; b=4'b0011; cin=1;#10;

end
endmodule 

