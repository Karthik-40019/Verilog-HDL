module parity_gen_check(
input [3:0] data_tx,
input [3:0] data_rx,
input mode,
output reg parity_bit,
output reg error
);
//---------Parity Generator---------//
always @(*) begin 
if(mode == 1'b0) begin 
   parity_bit = ^data_tx;
  end
else begin 
  parity_bit = ~^data_tx;
end

//---------Parity Checker-----------//
if(mode == 1'b0) begin 
   error = ^{data_rx,parity_bit};
  end
else begin 
  error = ~^{data_rx,parity_bit};
  end
end
endmodule
