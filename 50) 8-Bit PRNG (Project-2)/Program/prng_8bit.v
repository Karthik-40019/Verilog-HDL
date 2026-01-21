`timescale 1ns/1ps

// ================= 16-bit Counter =================
module counter16 (
    input clk,
    input rst,
    output reg [15:0] count
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 16'd0;
        else
            count <= count + 1;
    end
endmodule


// ================= 8-bit Adder =================
module adder8 (
    input [7:0] a, b,
    output [7:0] sum
);
    assign sum = a + b;  // 8-bit wrap-around (mod 256)
endmodule

// ================= PRNG Module =================
module prng_65536 (
    input clk,
    input rst,
    output reg [7:0] x,
    output reg [7:0] y,
    output [15:0] step
);
    wire [15:0] counter;
    wire [7:0] hi = counter[15:8];
    wire [7:0] lo = counter[7:0];

    wire [7:0] sum1, sum2;
    assign step = counter;

    // Instantiate counter
    counter16 cnt_inst (
        .clk(clk),
        .rst(rst),
        .count(counter)
    );

    // Adders
    adder8 add1 (.a(hi), .b(lo), .sum(sum1));
    adder8 add2 (.a(sum1), .b(lo), .sum(sum2));

    // Registers for x and y
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x <= 8'd0;
            y <= 8'd0;
        end else begin
            x <= sum1;
            y <= sum2;
        end
    end
endmodule

// ================= Testbench =================
module tb_prng_65536;
    reg clk = 0;
    reg rst = 1;
    wire [7:0] x, y;
    wire [15:0] step;

    prng_65536 uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y),
        .step(step)
    );

    // Clock generation: 100 MHz
    always #5 clk = ~clk;

    initial begin
        $display("Step\tX\tY");

        #10 rst = 0;

        forever begin
            @(posedge clk);
            $display("%5d\t%3d\t%3d", step, x, y);

            if (step == 16'd70000) begin
                $display("Reached step 70000. Done!");
                $finish;
            end
        end
    end
endmodule
