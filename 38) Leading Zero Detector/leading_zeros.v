module leading_zeros #(parameter w = 8 )(
input [w-1:0] a,
output reg [$clog2(w+1)-1:0] count
);

integer i;
always @(*) begin 
   count = 0;
  for( i= w-1; i>=0; i=i-1) begin 
     if(a[i] == 1'b0) 
        count = count+1;
     else
        i = -1;
     end
end
endmodule
