module mealy_nov_0101(
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
        if(x==0) next_state=B;
        else     next_state=A;
      end
      
      B: begin
        if(x==0) next_state=B;
        else     next_state=C;
      end
      
      C: begin
        if(x==0) next_state=D;
        else     next_state=A;
      end
      
      D: begin
        if(x==0) next_state=B;
        else     next_state=A;
      end
      
      default: next_state<=A;
    endcase
  end
  
  assign z=(state==D) && (x==1)?1:0;
endmodule

    
      
