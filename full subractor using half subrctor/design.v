// Enter source text here
module half_subtractor (
    input A,
    input B,
    output Diff,
    output Borrow
);

    assign Diff   = A ^ B;
    assign Borrow = ~A & B;

endmodule
module full_subtractor (
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
);

    wire D1;
    wire B1;
    wire B2;

    // First Half Subtractor
    half_subtractor HS1 (
        .A(A),
        .B(B),
        .Diff(D1),
        .Borrow(B1)
    );

    half_subtractor HS2 (
        .A(D1),
        .B(Bin),
        .Diff(Diff),
        .Borrow(B2)
    );

    or G1 (Bout, B1, B2);

endmodule