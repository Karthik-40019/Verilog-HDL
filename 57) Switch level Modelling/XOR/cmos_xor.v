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
