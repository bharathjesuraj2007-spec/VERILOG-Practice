module decoder2to4(input A,B,EN,output [3:0] Y);
assign Y[0]=EN&~A&~B;
assign Y[1]=EN&~A&B;
assign Y[2]=EN&A&~B;
assign Y[3]=EN&A&B;
endmodule
module decoder3to8(input A,B,C,EN,output [7:0] Y);
wire EN0,EN1;
assign EN0=EN&~A;
assign EN1=EN&A;
decoder2to4 D0(.A(B),.B(C),.EN(EN0),.Y(Y[3:0]));
decoder2to4 D1(.A(B),.B(C),.EN(EN1),.Y(Y[7:4]));
endmodule