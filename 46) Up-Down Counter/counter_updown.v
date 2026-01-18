module counter_updown(
input clk,rst,
output reg[3:0] q
);
reg dir; //0-up, 1-down
always @(posedge clk or posedge rst) begin 

if(rst) begin 
q<=4'b0000;
dir<=1'b0;
end

else begin 
if(dir == 1'b0) begin 
if(q == 4'b1111) begin
    dir<=1'b1;
    q<=q - 4'd1;
end
else 
   q<=q + 4'd1;
end

else begin 
if(q == 4'b0000) begin 
   dir<=1'b0;
   q<=q + 4'd1;
end
else 
  q<=q - 4'd1;
end
end
end

endmodule
