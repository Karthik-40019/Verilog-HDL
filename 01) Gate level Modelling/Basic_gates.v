module basic_gates(
input a,b,
output y_and,y_or,y_nand,y_nor,y_xor,y_xnor
);

and U1(y_and,a,b);
or U2(y_or,a,b);
nand U3(y_nand,a,b);
nor U4(y_nor,a,b);
xor U5(y_xor,a,b);
xnor U6(y_xnor,a,b);

endmodule

