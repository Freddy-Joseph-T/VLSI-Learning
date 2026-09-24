module And_Gate
(
    input  A,B,clk,
    output reg Y
);
    always @(posedge clk)
    begin
        Y <= A & B;
    end
endmodule