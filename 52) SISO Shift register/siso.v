module siso(
input clk,rst,
input sin,
output sout
);

reg [3:0] q;

always @(posedge clk or posedge rst) begin 
   if(rst) 
     q<=4'b0000;
   else 
     q<={sin,q[3:1]};
end

assign sout=q[0];
endmodule
