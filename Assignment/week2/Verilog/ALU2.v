module ALU (R,G,B,Gray);
input [31:0] R,G,B;
output [31:0] Gray;

wire [31:0] Rx,Gy,Bz,temp,Gr;
parameter P=1;
//0.299*R
multiply mul0 ( .A(R),
		.B(32'h3E991687),   //0.299
		.C(Rx)
		);

//0.587*G
multiply mul1 ( .A(G),
		.B(32'h3F1645A2),  //0.587
		.C(Gy)
		);

//0.114*B
multiply mul2 ( .A(B),
		.B(32'h3DE978D5),   //0.114
		.C(Bz)
		);
//0.299*R + 0.587*G
add_fp fp0(.A(Rx),
	.B(Gy),
	.C(temp)
	);

//0.299*R + 0.587*G + 0.114*B
add_fp fp1(.A(temp),
	.B(Bz),
	.C(Gray)
	);

endmodule 
