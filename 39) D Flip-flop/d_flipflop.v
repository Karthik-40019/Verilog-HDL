module d_flipflop(
input d,
input clk,rst,
output reg q,qbar
);
always @(posedge clk or posedge rst) begin 
if(rst) begin
  q<=1'b0;
  qbar<=1'b1;
end
else begin
  q<=d;
  qbar<=~d;
end
end
endmodule
