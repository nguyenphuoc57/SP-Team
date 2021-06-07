//delay (W*2)+ K-1 = 32*2+3=67 clk
module double_linebuffer (clk,enable, reset,in, w1,w2,w3,w4,w5,w6,w7,w8,w9,lf_done);

parameter DATA_WIDTH = 32;
input clk, enable,reset;
input [DATA_WIDTH-1:0] in;
output [DATA_WIDTH-1:0] w1,w2,w3,w4,w5,w6,w7,w8,w9;
output lf_done;

//write 
counter counter1(.clk(clk),.reset(reset), .lf_done(lf_done), .enable(enable));
dff_define dff9(.Q(w9), 
					 .clk(clk), 
					 .D(in),
					 .rstn(reset));
line lf1(	.clk(clk),
				.reset(reset),
				.datain(w9),
				.dataout(w6));
line lf2(	.clk(clk),
				.reset(reset),
				.datain(w6),
				.dataout(w3));		
dff_define dff1(.Q(w8), 
					 .clk(clk), 
					 .D(w9),
					 .rstn(reset)
					 );				
dff_define dff2(.Q(w7), 
					 .clk(clk), 
					 .D(w8),
					 .rstn(reset));
					
dff_define dff3(.Q(w5), 
					 .clk(clk), 
					 .D(w6),
					 .rstn(reset));
					
dff_define dff4(.Q(w4), 
					 .clk(clk), 
					 .D(w5),
					 .rstn(reset));
					
dff_define dff5(.Q(w2), 
					 .clk(clk), 
					 .D(w3),
					 .rstn(reset));
					
dff_define dff6(.Q(w1), 
					 .clk(clk), 
					 .D(w2),
					 .rstn(reset));
endmodule 
