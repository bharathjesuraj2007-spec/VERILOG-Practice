`timescale 1ns/1ps
module tb;
reg clk,we;
reg [2:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

memory uut(clk,we,addr,data_in,data_out);

always #5 clk=~clk;

initial begin
    $dumpfile("memory.vcd");
        $dumpvars(0,tb);

            clk=0;
                we=1;

                    addr=3'd0;data_in=8'd10;#10;
                        addr=3'd1;data_in=8'd20;#10;
                            addr=3'd2;data_in=8'd30;#10;
                                addr=3'd3;data_in=8'd40;#10;

                                    we=0;

                                        addr=3'd0;#10;
                                            addr=3'd1;#10;
                                                addr=3'd2;#10;
                                                    addr=3'd3;#10;

                                                        $finish;
                                                        end
                                                        endmodule