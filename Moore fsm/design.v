module moore(
        input clk,reset,data,
            output reg detected
            );
            reg [2:0] state;
            always @(posedge clk or posedge reset) begin
                if(reset) state<=0;
                    else begin
                            case(state)
                                        0:if(data)state<=1;else state<=0;
                                                    1:if(data)state<=2;else state<=0;
                                                                2:if(data)state<=2;else state<=3;
                                                                            3:if(data)state<=4;else state<=0;
                                                                                        4:if(data)state<=2;else state<=0;
                                                                                                endcase
                                                                                                    end
                                                                                                    end
                                                                                                    always @(*) begin
                                                                                                        if(state==4) detected=1;
                                                                                                            else detected=0;
                                                                                                            end
                                                                                                            endmodule
