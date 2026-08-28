module tb_bcd_to_7segment;
reg [3:0] BCD;
wire a,b,c,d,e,f,g;
bcd_to_7segment DUT(.BCD(BCD),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
initial begin
$dumpfile("tb-vcd");
$dumpvars(0,tb_bcd_to_7segment);
BCD=4'b0000;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0001;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0010;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0011;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0100;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0101;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0110;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b0111;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b1000;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
BCD=4'b1001;#10;$display("BCD=%b Segments=%b%b%b%b%b%b%b",BCD,a,b,c,d,e,f,g);
$finish;
end
endmodule