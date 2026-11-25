module comparator_4bit(a,b,y1,y2,y3);

input [3:0] a;
input [3:0] b;
output reg y1,y2,y3;

always @(*) begin
    if(a>b) begin
        y1=1;
        y2=0;
        y3=0;
    end
    else if(a==b) begin
        y1=0;
        y2=1;
        y3=0;
    end
    else begin
        y1=0;
        y2=0;
        y3=1;
    end
end

endmodule