module task_design(
        input [7:0] A,B,
            output reg [8:0] SUM
            );
            task add;
                input [7:0] a,b;
                    output [8:0] result;
                        begin
                                result=a+b;
                                    end
                                    endtask
                                    always @(*) begin
                                        add(A,B,SUM);
                                        end
                                        endmodule
