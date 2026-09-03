`timescale 1ns/1ps
module tb;
reg [7:0] A,B;
wire [8:0] SUM;
task_design uut(A,B,SUM);
initial begin
    $dumpfile("task.vcd");
        $dumpvars(0,tb);
            A=10;B=20;#10;
                A=50;B=25;#10;
                    A=100;B=50;#10;
                        $finish;
                        end
                        endmodule