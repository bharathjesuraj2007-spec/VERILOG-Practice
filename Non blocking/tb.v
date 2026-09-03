`timescale 1ns/1ps
module tb;
reg clk;
reg [3:0] A;
wire [3:0] X,Y;
nonblocking uut(clk,A,X,Y);
always #5 clk=~clk;
initial begin
    $dumpfile("nonblocking.vcd");
        $dumpvars(0,tb);
            clk=0;
                A=4'd5;#10;
                    A=4'd10;#10;
                        A=4'd15;#10;
                            $finish;
                            end
                            endmodule