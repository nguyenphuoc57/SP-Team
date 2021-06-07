module maxpooling (clk, reset, enable,in,out,w1,w2,w3,w4,max_enable);

input clk, reset, enable;
input [31:0] in;
output [31:0] out;

output [31:0] w1, w2, w3, w4;
output  max_enable;
wire lf_done;
single_linebuffer sglf (.clk(clk),
								.reset(reset), 
								.enable(enable),
								.in(in), 
								.w1(w1), 
								.w2(w2),
								.w3(w3),
								.w4(w4),
								.lf_done(lf_done)
								);
stride str (.clk(clk), 
				.reset(reset), 
				.enable(lf_done),
				.valid(max_enable)
				);
max_4to1 m4t1 (.clk(clk),
				  .valid_in(max_enable), 
				  .enable(enable), 
				  .read(enable),
				  .w1(w1),
				  .w2(w2),
				  .w3(w3),
				  .w4(w4),
				  .out(out)
				  );


endmodule 
