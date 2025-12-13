`timescale 1ns/100ps

module halfAdder_tb;
reg a,b;
wire sum,cout;

half_adder uut(.a(a),.b(b),.sum(sum),.cout(cout));
initial begin 

a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;

end
endmodule
