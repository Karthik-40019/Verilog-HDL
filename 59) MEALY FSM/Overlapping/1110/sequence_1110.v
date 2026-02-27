module mealy_seq_1110(
  input clk,rst,x,
  output z
);
  parameter A=2'b00;
  parameter B=2'b01;
  parameter C=2'b10;
  parameter D=2'b11;
  
  reg[1:0] state,next_state;
  
  always @(posedge clk or posedge rst) begin 
    if(rst) begin
      state<=A;
    end
    else 
     state<=next_state;
  end
  
  always @(state or x) begin
    case(state)
      A: begin
        if(x==0) next_state=A;
        else     next_state=B;
      end
      
      B: begin
        if(x==0) next_state=A;
        else     next_state=C;
      end
      
      C: begin
        if(x==0) next_state=A;
        else     next_state=D;
      end
      
      D: begin
        if(x==0) next_state=A;
        else     next_state=D;
      end
      
      default: next_state=A;
    endcase
  end
  
  assign z=(state==D)&&(x==0)?1:0;
endmodule

