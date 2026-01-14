module comparator(
input [15:0]a,b,
output eql,grt,less
);

assign grt  = ($signed(a) > $signed(b));
assign less = ($signed(a) < $signed(b));
assign eql  = (a==b);

endmodule

