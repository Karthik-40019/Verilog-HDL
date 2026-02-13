module cmos_nor(
input a,b,
output y
);
supply1 vdd;
supply0 gnd;

wire w;

pmos p1(w,vdd,a);
pmos p2(y,w,b);
 
nmos n1(y,gnd,a);
nmos n2(y,gnd,b);

endmodule
