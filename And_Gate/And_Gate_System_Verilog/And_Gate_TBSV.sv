`timescale 1ns/1ps
module And_Gate_TBSV;
    logic A_in;
    logic B_in;
    logic clk;
    logic Y_out;

    And_Gate dut
    (
        .A(A_in),
        .B(B_in),
        .clk(clk),
        .Y(Y_out)
    );

        int i; int j;

        initial begin
            clk=0;
            forever begin
                #10;
                clk=!clk;   
            end
        end



        initial begin

            $dumpfile("And_Gate_Sim.vcd");
            $dumpvars(0,And_Gate_TBSV);
            $monitor("A=%b B=%b clk=%b Y=%b", A_in, B_in, clk, Y_out);

            for(i=0;i<2;i++)
            begin
                for(j=0;j<2;j++)
                begin
                    A_in = j; B_in = i; #20;
                end
            end

            $finish;

        end

endmodule