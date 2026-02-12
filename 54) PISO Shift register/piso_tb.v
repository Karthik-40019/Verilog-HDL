`timescale 1ns/100ps
module piso_tb;
reg clk,rst;
reg load;
reg [3:0] p_in;
wire s_out;

piso uut(clk,rst,load,p_in,s_out);
always #10 clk = ~clk ;

initial begin 
clk=0; rst=1; load =0; p_in=0;
#20 rst=0;

#10 load=1; 
    p_in=4'b1100;

#20 load=0; //start shifting
#100;

end
endmodule 
