module tb_comparator4bit;

    reg [3:0] A;
        reg [3:0] B;

            wire A_gt_B;
                wire A_eq_B;
                    wire A_lt_B;

                        comparator4bit DUT (
                                .A(A),
                                        .B(B),
                                                .A_gt_B(A_gt_B),
                                                        .A_eq_B(A_eq_B),
                                                                .A_lt_B(A_lt_B)
                                                                    );

                                                                        initial begin
                                                                            $dumpfile("tb-vcd");
                                                                            $dumpvars(0,tb_comparator4bit);

                                                                                        A = 4'b1010;
                                                                                                B = 4'b1010;
                                                                                                        #10;
                                                                                                                $display("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                                                                                                                                 A, B, A_gt_B, A_eq_B, A_lt_B);


                                                                                                                                                 A = 4'b1100;
                                                                                                                                                         B = 4'b1010;
                                                                                                                                                                 #10;
                                                                                                                                                                         $display("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                                                                                                                                                                                          A, B, A_gt_B, A_eq_B, A_lt_B);

                                                                                                                                                                                                          A = 4'b0011;
                                                                                                                                                                                                                  B = 4'b0110;
                                                                                                                                                                                                                          #10;
                                                                                                                                                                                                                                  $display("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                                                                                                                                                                                                                                                   A, B, A_gt_B, A_eq_B, A_lt_B);

                                                                                                                                                                                                                                                           // Another greater case
                                                                                                                                                                                                                                                                   A = 4'b1111;
                                                                                                                                                                                                                                                                           B = 4'b0001;
                                                                                                                                                                                                                                                                                   #10;
                                                                                                                                                                                                                                                                                           $display("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                                                                                                                                                                                                                                                                                                            A, B, A_gt_B, A_eq_B, A_lt_B);

                                        
                                                                                                                                                                                                                                                                                                                            A = 4'b0001;
                                                                                                                                                                                                                                                                                                                                    B = 4'b1110;
                                                                                                                                                                                                                                                                                                                                            #10;
                                                                                                                                                                                                                                                                                                                                                    $display("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                                                                                                                                                                                                                                                                                                                                                                     A, B, A_gt_B, A_eq_B, A_lt_B);

                                                                                                                                                                                                                                                                                                                                                                             $finish;
                                                                                                                                                                                                                                                                                                                                                                                 end

                                                                                                                                                                                                                                                                                                                                                                                 endmodule