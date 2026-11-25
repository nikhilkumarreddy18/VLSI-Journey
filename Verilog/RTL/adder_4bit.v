module adder4_bit(i1, i2, y);

    input [3:0] i1;
    input [3:0] i2;
    output reg [4:0] y;

    always @(*) begin
        y = i1 + i2;
    end

endmodule