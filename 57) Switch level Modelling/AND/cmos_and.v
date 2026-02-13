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
