module tb_comparator;

reg [3:0] a;
reg [3:0] b;
wire y1,y2,y3;

comparator_4bit DUT(
    .a(a),
    .b(b),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    a=4'b1000; b=4'b0010;
    #10;
    $display("A>B=%b A=B=%b A<B=%b",y1,y2,y3);

    a=4'b1000; b=4'b1000;
    #10;
    $display("A>B=%b A=B=%b A<B=%b",y1,y2,y3);

    a=4'b1000; b=4'b1001;
    #10;
    $display("A>B=%b A=B=%b A<B=%b",y1,y2,y3);

    $finish;
end

endmodule