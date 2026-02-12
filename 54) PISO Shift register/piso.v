module piso(
input clk,rst,
input load,
input [3:0] p_in,
output reg s_out
);

reg [3:0] shift_reg;

always @(posedge clk or posedge rst) begin 
  if(rst) begin
     shift_reg<=4'b0000;
     s_out<=0;
   end

  else begin 
     if(load) begin 
        shift_reg<=p_in;
   end
     else begin 
        s_out<=shift_reg[3];
        shift_reg<={shift_reg[2:0],1'b0};
     end
   end
end
endmodule
