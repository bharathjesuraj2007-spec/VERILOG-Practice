module tb_ripple_carry_adder_4bit;

    reg  [3:0] A;
    reg  [3:0] B;
    reg        Cin;

    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder_4bit DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("tb-vcd");
        $dumpvars(0,tb_ripple_carry_adder_4bit);

        A = 4'b0011;
        B = 4'b0100;
        Cin = 1'b0;
        #10;

        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b",
                  A, B, Cin, Sum, Cout);
        A = 4'b0111;
        B = 4'b0001;
        Cin = 1'b0;
        #10;

        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b",
                  A, B, Cin, Sum, Cout);
        A = 4'b1111;
        B = 4'b0001;
        Cin = 1'b0;
        #10;

        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b",
                  A, B, Cin, Sum, Cout);
        A = 4'b0010;
        B = 4'b0011;
        Cin = 1'b1;
        #10;

        $display("A=%b B=%b Cin=%b -> Sum=%b Cout=%b",
                  A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule