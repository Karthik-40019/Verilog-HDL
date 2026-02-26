module moore_tb_1001;
  reg clk,rst,x;
  wire z;
  
  seq_detector_1001 uut(clk,rst,x,z);
  always #5 clk=~clk;
  initial begin 
    clk=1; rst=1; #10;
    rst=0;

    //Sequence: 0100100101
    x=0; #10;
    x=1; #10;
    x=0; #10;
    x=0; #10;
    x=1; #10;
    x=0; #10;
    x=0; #10;
    x=1; #10;
    x=0; #10;
    x=1; #10;
$finish();
end
endmodule

    
