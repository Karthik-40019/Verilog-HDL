module USR(
input clk,rst,
input [1:0] sel,
input s_left,
input s_right,
input [3:0] p_in,
output reg [3:0] out
);

always @(posedge clk or posedge rst) begin 
   if(rst) begin 
     out<=4'b0000;
   end
   else begin
      case(sel) 
        2'b00: out<=out;                //hold
        2'b01: out<={out[2:0],s_left};  //shift left
        2'b10: out<={s_right,out[3:1]}; //shift right
        2'b11: out<=p_in;               //load data
   default: out<=out;
   endcase
  end
end
endmodule


