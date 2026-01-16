module t_flipflop(
input t,
input clk,rst,
output reg q,
output qbar
);

always @(posedge clk or posedge rst) begin 
   if(rst) 
     q <= 1'b0;
   else 
     q <= q^t;
   end
assign qbar = ~q;
endmodule
