`timescale 1ns/1ps
module tb;
reg [3:0] A,B;
reg cin;
wire [3:0] sum;
wire cout;
bcd_adder uut(A,B,cin,sum,cout);
initial begin
    $dumpfile("bcd_adder.vcd");
        $dumpvars(0,tb);
            A=4;B=5;cin=0;#10;
                A=7;B=8;cin=0;#10;
                    A=9;B=9;cin=0;#10;
                        A=5;B=6;cin=1;#10;
                            $finish;
                            end
                            endmodule