module nonblocking(
        input clk,
            input [3:0] A,
                output reg [3:0] X,Y
                );
                always @(posedge clk) begin
                    X<=A;
                        Y<=X;
                        end
                        endmodule
