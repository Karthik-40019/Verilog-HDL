module ALU_16BIT(
input [15:0] a,b,
input [3:0] alu_sel,
output reg [15:0] result,
output reg carry,
output reg borrow,
output reg overflow,
output zero
);


wire [15:0] sum, diff;
wire cout, bout;

wire [15:0] and_out, or_out, xor_out;
wire [15:0] lsl_out, lsr_out, asr_out;

wire eql, grt, less;

wire [3:0] n = b[3:0];


Adder         u1 (.a(a), .b(b), .cin(1'b0), .sum(sum), .cout(cout));
subtractor    u2 (.a(a), .b(b), .bin(1'b0), .diff(diff), .bout(bout));

bitwise_and   u3 (.a(a), .b(b), .y(and_out));
bitwise_or    u4 (.a(a), .b(b), .y(or_out));
bitwise_xor   u5 (.a(a), .b(b), .y(xor_out));


left_shift    u6 (.a(a), .n(n), .y(lsl_out));
right_shift   u7 (.a(a), .n(n), .y(lsr_out));
ASR           u8 (.a(a), .n(n), .y(asr_out));

comparator u9 (.a(a), .b(b), .eql(eql), .grt(grt), .less(less));


always @(*) begin 
    result   = 16'b0;
    carry    = 1'b0;
    overflow = 1'b0;

    case(alu_sel) 
    4'b0000 : begin 
            result = sum;
            carry = cout;
            overflow = (~a[15] & ~b[15] & result[15]) | (a[15] & b[15] & ~result[15]);
    end

    4'b0001 : begin 
            result = diff;
            borrow  = bout;
            overflow = (~a[15] & b[15] & result[15]) | (a[15] & ~b[15] & ~result[15]);
    end

    4'b0010 : result = and_out;
    4'b0011 : result = or_out;
    4'b0100 : result = xor_out;
    4'b0101 : result = lsl_out;
    4'b0110 : result = lsr_out;
    4'b0111 : result = asr_out;

    4'b1000 : begin 
          result = (less) ? 16'd1 : 16'd0;
    end

    default : result = 16'b0;
    endcase
end

assign zero = (result == 16'b0);

endmodule





