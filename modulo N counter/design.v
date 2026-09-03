module modulo_counter #(parameter WIDTH=4)(
        input clk,
            input reset,
                input [WIDTH-1:0] N,
                    output reg [WIDTH-1:0] count
                    );
                    always @(posedge clk or posedge reset) begin
                        if(reset)count<=0;
                            else if(N==0)count<=0;
                                else if(count>=N-1)count<=0;
                                    else count<=count+1'b1;
                                    end
                                    endmodule
