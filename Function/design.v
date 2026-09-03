module function_design(
        input [7:0] A,B,
            output [8:0] SUM
            );
            function [8:0] add;
                input [7:0] a,b;
                    begin
                            add=a+b;
                                end
                                endfunction
                                assign SUM=add(A,B);
                                endmodule
