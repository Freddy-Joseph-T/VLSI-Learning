module And_Gate
    (
        input logic A, B, clk,
        output logic Y
    );

    always_ff @(posedge clk)
    begin
        Y <= A & B;
    end

endmodule