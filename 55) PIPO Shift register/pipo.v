module pipo(
input clk,rst,
input [3:0] p_in,
output reg [3:0] p_out
);
always @(posedge clk or posedge rst) begin 
  if(rst) begin 
     p_out<=4'b0000;
  end
  else begin 
     p_out<=p_in;
  end
end
endmodule 
