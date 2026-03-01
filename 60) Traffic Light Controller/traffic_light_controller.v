`define TRUE  1'b1
`define FALSE 1'b0

`define Y2RDELAY 3
`define R2YDELAY 2

module TLC(hwy, cntry, x, clk, clear);

  output reg [1:0] hwy, cntry;
  input x;
  input clk, clear;
  
  parameter RED    = 2'd0;
  parameter YELLOW = 2'd1;
  parameter GREEN  = 2'd2;
  
  // State definition     HWY        CNTRY
  parameter S0 = 3'd0;  // GREEN     RED
  parameter S1 = 3'd1;  // YELLOW    RED
  parameter S2 = 3'd2;  // RED       RED
  parameter S3 = 3'd3;  // RED       GREEN
  parameter S4 = 3'd4;  // RED       YELLOW
  
  reg [2:0] state, next_state; 
  
  // State register
  always @(posedge clk) begin
    if (clear) 
      state <= S0;
    else
      state <= next_state;
  end
  
  // Output logic (Moore)
  always @(*) begin
    hwy   = GREEN;   // Default
    cntry = RED;     // Default
    
    case(state) 
      S0: ;       
      S1: hwy = YELLOW;
      S2: hwy = RED;
      
      S3: begin
            hwy   = RED;
            cntry = GREEN;
          end
      
      S4: begin
            hwy   = RED;
            cntry = YELLOW;
          end
    endcase
  end
  
  // Next state logic
  always @(*) begin
    next_state = state;   // default
    
    case(state) 
    
      S0: begin
            if (x) next_state = S1;
            else   next_state = S0;
          end
      
      S1: begin 
            next_state = S2;
          end
      
      S2: begin
            next_state = S3;
          end
      
      S3: begin
            if (x) next_state = S3;
            else   next_state = S4;
          end
      
      S4: begin 
            next_state = S0;
          end
      
      default: next_state = S0;
      
    endcase
  end
  
endmodule
