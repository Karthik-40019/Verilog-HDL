module reg_4bit(
input [3:0] d,
input clk,rst,
input en,
output reg [3:0] q
);
always @(posedge clk) begin 
if(rst) 
  q<=4'b0000;
else if(en) //when en=1 new data gets loaded else old data will be in hold
  q<=d;
else 
  q<=q;
end
endmodule

