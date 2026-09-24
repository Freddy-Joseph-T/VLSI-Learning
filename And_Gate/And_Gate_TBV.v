`timescale 1ns/1ps
module And_Gate_TB;

    reg A_in;
    reg B_in;
    wire Y_out;

And_Gate bananaaa
(
    .A(A_in),
    .B(B_in),
    .Y(Y_out)
);

integer i;
integer j;

initial begin

    $dumpfile("And_Gate.vcd");
    $dumpvars(0, And_Gate_TB);
    $monitor("Monitor A=%b B=%b Y=%b", A_in, B_in, Y_out);

    A_in = 0; B_in = 0;
    #10;
    A_in = 1; B_in = 0;
    #10;
    A_in = 0; B_in = 1;
    #10;
    A_in = 1; B_in = 1;
    #10;

    $display("Normal A=%b B=%b Y=%b", A_in, B_in, Y_out);


// or we can do this too
/* 
    this is a nested loop for the same 
    direct method as above 
*/


    for(i=0; i<2; i++)
    begin

        for(j=0; j<2; j++)
        begin

            B_in = i; A_in = j;
            #10;

        end

    end

    $display("Nested A=%b B=%b Y=%b", A_in, B_in, Y_out);

$finish;

end

endmodule