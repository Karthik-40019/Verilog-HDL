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
