module ModN_counter #(
parameter  integer w=4, 
parameter integer n=12
)(
input clk, rst,
output reg[w-1:0] q
);

always @(posedge clk or posedge rst) begin 
   if(rst) 
      q<= {w{1'b0}};
   else if(q == n-1)
      q<= {w{1'b0}};
   else 
      q<=q+1'b1;
end
endmodule
