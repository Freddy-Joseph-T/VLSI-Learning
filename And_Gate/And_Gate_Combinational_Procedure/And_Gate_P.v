module And_Gate
(
    input  A,B,
    output reg Y
);
    always@(*)
    begin
        Y = A & B;
    end
endmodule