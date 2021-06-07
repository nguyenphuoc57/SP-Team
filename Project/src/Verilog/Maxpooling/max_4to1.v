
module max_4to1(clk,read, valid_in, enable, w1,w2,w3,w4,out);

input clk, valid_in,enable;
input [31:0]  w1, w2, w3, w4;
input read;
output reg [31:0]out;

wire [31:0] max1, max2,max3;
always @(posedge clk) begin
	if(read) out=max3;
	else out=32'b0;
end
max m1(	.clk(clk), 
			.enable(enable),
			.valid_in(valid_in),
			.in1(w1),
			.in2(w2),
			.max_out(max1));
max m2 (	.clk(clk),
			.valid_in(valid_in),
			.enable (enable),
			.in1(w3),
			.in2(w4),
			.max_out(max2)
			);
max m3(  .clk(clk),
			.valid_in(valid_in),
			.enable(enable),
			.in1(max1),
			.in2(max2),
			.max_out(max3)
			);
endmodule 
