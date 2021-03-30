module floating2int (in, out);
input [31:0] in;
output reg [7:0] out;

reg sign;
reg [7:0] exp;
reg [22:0] frac;
reg [4:0] temp;
reg [23:0] temp1;
always @(in) begin
	sign = in[31];
	exp= in[30:23];
	frac=in[22:0] ;
   
        exp= exp - 8'd127;
	temp = 5'd16+(5'd7- exp[4:0]) ;
	temp1={1'd1,frac} >> temp;
	
	out = temp1[7:0];

end
endmodule
