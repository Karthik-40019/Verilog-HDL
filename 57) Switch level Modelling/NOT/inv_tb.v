module inv_tb;
  reg a;
  wire y;
  cmos_inv uut(a,y);
  initial begin 
    a=0; #10;
    a=1; #10;
  end
endmodule


