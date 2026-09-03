`timescale 1ns/1ps
module tb;
reg clk,reset,data;
wire detected;
moore uut(clk,reset,data,detected);
always #5 clk=~clk;
initial begin
    $dumpfile("moore.vcd");
        $dumpvars(0,tb);
            clk=0;reset=1;data=0;
                #10 reset=0;
                    data=1;#10;
                        data=1;#10;
                            data=0;#10;
                                data=1;#10;
                                    data=1;#10;
                                        data=1;#10;
                                            data=0;#10;
                                                data=1;#10;
                                                    $finish;
                                                    end
                                                    endmodule