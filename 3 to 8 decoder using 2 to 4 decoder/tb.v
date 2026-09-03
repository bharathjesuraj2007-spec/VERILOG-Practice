module tb_decoder3to8;
reg A,B,C,EN;
wire [7:0] Y;
decoder3to8 DUT(.A(A),.B(B),.C(C),.EN(EN),.Y(Y));
initial begin
$dumpfile("tb-vcd");
$dumpvars(0,tb_decoder3to8);
EN=1;
A=0;B=0;C=0;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=0;B=0;C=1;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=0;B=1;C=0;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=0;B=1;C=1;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=1;B=0;C=0;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=1;B=0;C=1;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=1;B=1;C=0;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
A=1;B=1;C=1;#10;$display("ABC=%b%b%b Y=%b",A,B,C,Y);
$finish;
end
endmodule