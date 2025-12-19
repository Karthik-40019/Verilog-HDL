module comparator_4bit(
input [3:0]a,b,
output eql,grt,less
);

assign grt=(a>b);
assign less=(a<b);
assign eql=(a==b);

endmodule


