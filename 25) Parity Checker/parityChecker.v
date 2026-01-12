module parityCheck(
input [3:0]d,
input parity,
input mode,
output reg error
);

always @(*) begin 
  //mode=0 then check for error in even parity
  //mode=1 then check for error in odd parity
if(mode==1'b0)
   error = ^{d,parity};
else
   error = ~^{d,parity};

end
endmodule

