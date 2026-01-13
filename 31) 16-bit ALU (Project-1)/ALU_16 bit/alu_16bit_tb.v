`timescale 1ns/100ps

module alu_16bit_tb;

reg  [15:0] a, b;
reg  [3:0]  alu_sel;
wire [15:0] result;
wire carry, borrow, overflow, zero;

ALU_16BIT uut (
    .a(a),
    .b(b),
    .alu_sel(alu_sel),
    .result(result),
    .carry(carry),
    .borrow(borrow),
    .overflow(overflow),
    .zero(zero)
);

task apply_op;
    input [3:0]  sel;
    input [15:0] A_in;
    input [15:0] B_in;
begin
    alu_sel = sel;
    a = A_in;
    b = B_in;
    #10;

    $display("T=%0t | sel=%b | A=%0d | B=%0d | Result=%0d | C=%b | Borrow=%b | V=%b | Z=%b",
    $time, alu_sel, $signed(a), $signed(b), $signed(result), carry, borrow, overflow, zero);
end
endtask

initial begin
    a = 0; b = 0; alu_sel = 0;
    #10;

    apply_op(4'b0000, 16'd20, 16'd10);
    apply_op(4'b0001, 16'd20, 16'd10);
    apply_op(4'b0010, 16'h00FF, 16'h0F0F);
    apply_op(4'b0011, 16'h00FF, 16'h0F0F);
    apply_op(4'b0100, 16'h00FF, 16'h0F0F);

    apply_op(4'b0101, 16'h0001, 16'd4);
    apply_op(4'b0110, 16'h8000, 16'd3);
    apply_op(4'b0111, 16'h8000, 16'd3);

    apply_op(4'b1000, 16'd5, 16'd10);
    apply_op(4'b1000, 16'd15, 16'd10);

    apply_op(4'b0000, 16'h7FFF, 16'h0001);
    apply_op(4'b0001, 16'h8000, 16'h0001);

    apply_op(4'b0001, 16'd10, 16'd10);

    #20;
    $finish;
end

endmodule
