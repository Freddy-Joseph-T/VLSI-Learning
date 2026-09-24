`timescale 1ns/1ps
module And_Gate_TB_Clk;

    reg A_in;
    reg B_in;
    wire Y_out;
    reg clk;

And_Gate bananaaa
(
    .A(A_in),
    .B(B_in),
    .Y(Y_out),
    .clk(clk)
);

integer i;
integer j;

initial begin

    clk= 0;
    forever begin
        #10;
        clk =!clk;
    end

end

initial begin
    
    $dumpfile("And_Gate_Clk.vcd");
    $dumpvars(0, And_Gate_TB_Clk);
    $monitor("Monitor A=%b B=%b Y=%b Clk=%b", A_in, B_in, Y_out, clk);

    for(i=0; i<2; i++)
    begin

        for(j=0; j<2; j++)
        begin

            B_in = j; A_in = i;
            #20;

        end

    end

    $display("Nested A=%b B=%b Y=%b", A_in, B_in, Y_out);
    $finish;

end

endmodule