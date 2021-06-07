module single_linebuffer(clk,reset, enable,in, w1, w2,w3,w4,lf_done);

input clk, reset, enable;
input [31:0] in;
output [31:0] w1,w2,w3,w4;
output lf_done;

counter #(.time_counter(35)) c1 (.clk(clk),.reset(reset), .lf_done(lf_done),.enable(enable)); 
dff_define d4(	.Q(w4), 
					.clk(clk), 
					.D(in),
					.rstn(reset)
					);
dff_define d3(	.Q(w3), 
					.clk(clk), 
					.D(w4),
					.rstn(reset)
					);
line l1(	.clk(clk),
			.reset(reset),
			.datain(w4),
			.dataout(w2)
			);
dff_define d1(	.Q(w1), 
					.clk(clk), 
					.D(w2),
					.rstn(reset)
					);