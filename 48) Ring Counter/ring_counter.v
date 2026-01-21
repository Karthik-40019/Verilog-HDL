//For an N-bit ring counter, pattern repeats after N cycles.
module ring_counter(
input clk,rst,
output reg[3:0] q
);

always @(posedge clk or posedge rst) begin 
  if(rst) 
   q<=4'b1000;
  else 
   q<={q[0],q[3:1]}; //right rotation
end
endmodule
