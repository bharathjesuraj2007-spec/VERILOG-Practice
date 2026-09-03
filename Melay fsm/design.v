module mealy(
        input clk,reset,data,
            output reg detected
            );
            reg [1:0] state;
            always @(posedge clk or posedge reset) begin
                if(reset)begin
                        state<=0;
                                detected<=0;
                                    end
                                        else begin
                                                detected<=0;
                                                        case(state)
                                                                    0:if(data)state<=1;else state<=0;
                                                                                1:if(data)state<=2;else state<=0;
                                                                                            2:if(data)state<=2;else state<=3;
                                                                                                        3:if(data)begin detected<=1;state<=1;end
                                                                                                                      else state<=0;
                                                                                                                              endcase
                                                                                                                                  end
                                                                                                                                  end
                                                                                                                                  endmodule
