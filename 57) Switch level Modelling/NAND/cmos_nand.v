module cmos_nand(
input a,b,
output y
);
supply1 vdd;
supply0 gnd;
wire w;

pmos p1(y,vdd,a);
pmos p2(y,vdd,b);

nmos n1(y,w,a);
nmos n2(w,gnd,b);

endmodule
