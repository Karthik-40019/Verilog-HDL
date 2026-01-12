`timescale 1ns/100ps
module parity_tb;
reg [3:0] data_tx;
reg [3:0] data_rx;
reg mode;
wire parity_bit;
wire error;

parity_gen_check uut(data_tx,data_rx,mode,parity_bit,error);
initial begin 
data_tx=4'b1110; mode=1'b1; data_rx=4'b1100; #10; //pb=0, error=1
data_tx=4'b1001; mode=1'b0; data_rx=4'b1001; #10; //pb=0, error=0
data_tx=4'b1100; mode=1'b1; data_rx=4'b1101; #10; //pb=1, error=1

end
endmodule
