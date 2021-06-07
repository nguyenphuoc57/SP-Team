module relu (in, out );
input [31:0] in;
output reg [31:0] out;

always @* begin
	if(in[31]) out=32'b0;
	else out=in;

end
endmodule 