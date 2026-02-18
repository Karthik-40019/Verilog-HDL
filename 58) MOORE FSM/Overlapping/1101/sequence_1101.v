module sequence_1101(
  input clk,rst,x,
  output reg z
);
  parameter A=3'd0;
  parameter B=3'd1;
  parameter C=3'd2;
  parameter D=3'd3;
  parameter E=3'd4;
  
  reg[2:0] state, next_state;
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      state<=A;
    end
    else 
      state<=next_state;
  end
  
  always @(state or x) begin 
    case(state) 
      A:begin
        if(x==0) next_state=A;
        else     next_state=B;
      end
      
      B: begin
        if(x==0) next_state=A;
        else     next_state=C;
      end
      
      C: begin
        if(x==0) next_state=D;
        else     next_state=C;
      end
      
      D: begin   
        if(x==0) next_state=A;
        else     next_state=E;
      end
      
      E: begin
        if(x==0) next_state=A;
        else     next_state=C;
      end
      default: next_state=A;
    endcase
  end
  
  always @(*) begin
    case(state) 
      A: z=0;
      B: z=0;
      C: z=0;
      D: z=0;
      E: z=1;
      default: z=0;
    endcase
  end
endmodule

      
      
  
