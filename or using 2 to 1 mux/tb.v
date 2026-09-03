module tb_or_using_mux;
reg A,B;
wire Y;
or_using_mux DUT(.A(A),.B(B),.Y(Y));
initial begin
$dumpfile("tb-vcd");
$dumpvars(0,tb_or_using_mux);
A=0;B=0;#10;$display("A=%b B=%b Y=%b",A,B,Y);
A=0;B=1;#10;$display("A=%b B=%b Y=%b",A,B,Y);
A=1;B=0;#10;$display("A=%b B=%b Y=%b",A,B,Y);
A=1;B=1;#10;$display("A=%b B=%b Y=%b",A,B,Y);
$finish;
end
endmodule