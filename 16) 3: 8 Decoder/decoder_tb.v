`timescale 1ns/100ps

module decoder_tb;
reg [2:0]a;
wire [7:0]y;

decoder_3x8 uut(a,y);
initial begin 
a=3'b000;#10;
a=3'b001;#10;
a=3'b010;#10;
a=3'b011;#10;
a=3'b100;#10;
a=3'b101;#10;
a=3'b110;#10;
a=3'b111;#10;
end
endmodule
