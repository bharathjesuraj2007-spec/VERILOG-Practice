module tb_full_adder;

    reg A;
    reg B;
    reg Cin;

    wire Sum;
    wire Cout;

    full_adder DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $display("A B Cin | Sum Cout");
        $display("------------------");
        $dumpfile("tb-vcd");
        $dumpvars(0,tb_full_adder);
        

        A = 0; B = 0; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 0; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        $finish;

    end

endmodule