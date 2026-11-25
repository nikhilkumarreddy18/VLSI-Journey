module tb_adder4;

    reg [3:0] i1, i2;
    wire [4:0] y;

    adder4_bit DUT (
        .i1(i1),
        .i2(i2),
        .y(y)
    );

    initial begin
        i1 = 4'b0000; i2 = 4'b0001; #10;
        i1 = 4'b1000; i2 = 4'b0110; #10;

        $finish;
    end

endmodule