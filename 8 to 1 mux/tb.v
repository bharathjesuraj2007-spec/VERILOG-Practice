module tb_mux8to1;

    reg I0, I1, I2, I3, I4, I5, I6, I7;
    reg S2, S1, S0;
    wire Y;

    mux8to1 DUT (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .S2(S2),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin
        $dumpfile("tb-vcd");
        $dumpvars(0,tb_mux8to1);

        I0 = 1'b0;
        I1 = 1'b1;
        I2 = 1'b0;
        I3 = 1'b1;
        I4 = 1'b0;
        I5 = 1'b1;
        I6 = 1'b0;
        I7 = 1'b1;

        S2 = 0; S1 = 0; S0 = 0;
        #10;

        S2 = 0; S1 = 0; S0 = 1;
        #10;

        S2 = 0; S1 = 1; S0 = 0;
        #10;

        S2 = 0; S1 = 1; S0 = 1;
        #10;

        S2 = 1; S1 = 0; S0 = 0;
        #10;

        S2 = 1; S1 = 0; S0 = 1;
        #10;

        S2 = 1; S1 = 1; S0 = 0;
        #10;

        // S2 S1 S0 = 111
        S2 = 1; S1 = 1; S0 = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t S2S1S0=%b%b%b | Y=%b",
                 $time, S2, S1, S0, Y);
    end

endmodule