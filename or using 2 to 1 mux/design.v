module mux2to1(input I0,I1,S,output Y);
assign Y=S?I1:I0;
endmodule

module or_using_mux(input A,B,output Y);
mux2to1 M1(.I0(B),.I1(1'b1),.S(A),.Y(Y));
endmodule