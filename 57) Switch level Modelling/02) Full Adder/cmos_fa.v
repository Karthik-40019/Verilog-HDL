// xor gate 
module cmos_xor(
input a,b,
output y
);
supply1 vdd;
supply0 gnd;

wire w1,w2,w3,w4;

pmos p1(w1,vdd,a);
pmos p2(y,w1,~b);
pmos p3(w2,vdd,~a);
pmos p4(y,w2,b);

nmos n1(y,w3,a);
nmos n2(w3,gnd,b);
nmos n3(y,w4,~a);
nmos n4(w4,gnd,~b);

endmodule 

// and gate 
module cmos_and(
input a,b,
output y
);
supply1 vdd;
supply0 gnd;
wire x,w;

pmos p1(x,vdd,a);
pmos p2(x,vdd,b);

nmos n1(x,w,a);
nmos n2(w,gnd,b);

pmos p3(y,vdd,x);
nmos n3(y,gnd,x);

endmodule

//or gate 
module cmos_or(
input a,b,
output y
);
supply1 vdd;
supply0 gnd;
wire x,w;

pmos p1(w,vdd,a);
pmos p2(x,w,b);

nmos n1(x,gnd,a);
nmos n2(x,gnd,b);

pmos p3(y,vdd,x);
nmos n3(y,gnd,x);

endmodule

// half adder
module cmos_halfAdder(
input A,B,
output sum,cout
);
cmos_xor u1(.a(A),.b(B),.y(sum));
cmos_and u2(.a(A),.b(B),.y(cout));
endmodule

//full adder using half adder
module cmos_fullAdder(
input a,b,cin,
output sum,cout
);

wire w1,w2,w3;
cmos_halfAdder u1(.A(a),.B(b),.sum(w1),.cout(w2));
cmos_halfAdder u2(.A(w1),.B(cin),.sum(sum),.cout(w3));
cmos_or u3(.a(w3),.b(w2),.y(cout));

endmodule


