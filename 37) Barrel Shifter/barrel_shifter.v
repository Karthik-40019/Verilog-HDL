// A Barrel shifter is a circuit that can move bits by any number of positions in ONE clock / ONE step using MUX/logic.
module barrel_shifter(
input [7:0] a,
input [2:0] s,
input dir,
output reg[7:0] y
);

always @(*) begin 
if(dir == 1'b0) begin //rotate right
   case(s) 
     3'b000: y = a;
     3'b001: y = {a[0], a[7], a[6], a[5], a[4], a[3], a[2], a[1]};
     3'b010: y = {a[1], a[0], a[7], a[6], a[5], a[4], a[3], a[2]};
     3'b011: y = {a[2], a[1], a[0], a[7], a[6], a[5], a[4], a[3]};
     3'b100: y = {a[3], a[2], a[1], a[0], a[7], a[6], a[5], a[4]};
     3'b101: y = {a[4], a[3], a[2], a[1], a[0], a[7], a[6], a[5]};
     3'b110: y = {a[5], a[4], a[3], a[2], a[1], a[0], a[7], a[6]};
     3'b111: y = {a[6], a[5], a[4], a[3], a[2], a[1], a[0], a[7]};
     default: y = a;
   endcase
end


else if(dir == 1'b1) begin //rotate left 
  case(s) 
     3'b000: y = a;
     3'b001: y = {a[6], a[5], a[4], a[3], a[2], a[1], a[0], a[7]};
     3'b010: y = {a[5], a[4], a[3], a[2], a[1], a[0], a[7], a[6]};
     3'b011: y = {a[4], a[3], a[2], a[1], a[0], a[7], a[6], a[5]};
     3'b100: y = {a[3], a[2], a[1], a[0], a[7], a[6], a[5], a[4]};
     3'b101: y = {a[2], a[1], a[0], a[7], a[6], a[5], a[4], a[3]};
     3'b110: y = {a[1], a[0], a[7], a[6], a[5], a[4], a[3], a[2]};
     3'b111: y = {a[0], a[7], a[6], a[5], a[4], a[3], a[2], a[1]};
     default: y = a;
  endcase
 end
end
  // y = (dir==0) ? ((a>>s)|(a<<(8-s))) : ((a<<s)|(a>>(8-s))); (entire code in 1 line)
endmodule






