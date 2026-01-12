module even_odd_detector(
input [3:0] n,
output reg even,
output reg odd
);
always @(*) begin 
    if( n[0] == 1'b1) begin 
          odd = 1'b1;
          even = 1'b0;
    end
    else begin 
          odd = 1'b0;
          even = 1'b1;
     end
end
endmodule
