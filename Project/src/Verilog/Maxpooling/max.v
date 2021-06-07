module max(clk, valid_in,enable,in1,in2,max_out);

input clk, enable,valid_in;
input [31:0]  in1,in2;
output reg [31:0]max_out;

always @(posedge clk) begin
	if(~enable) begin
		max_out=32'd0;
	end
	else if(valid_in) begin
			if		  (in1[31]< in2[31] ) max_out=in1;
			else if (in1[31] > in2[31]) max_out=in2;
			else if (in1[30:0]==in2[30:0]) max_out=in1;
			else if (in1[30:0] < in2[30:0]) max_out=in2;
			else if (in1[30:0] > in2[30:0]) max_out=in1;
	end 
	
end
endmodule 
