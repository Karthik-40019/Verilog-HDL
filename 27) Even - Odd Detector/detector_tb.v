`timescale 1ns/100ps
module detector_tb;
reg [3:0] n;
wire even;
wire odd;

even_odd_detector uut(n,even,odd);
initial begin 
n=4'b1000;#10;
n=4'b0011;#10;
n=4'bx001;#10;
n=4'bx100;#10;

end
endmodule
