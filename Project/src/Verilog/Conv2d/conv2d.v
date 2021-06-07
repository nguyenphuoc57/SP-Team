//Phuoc Nguyen
//delay 69 clk
module conv2d (clk,reset,valid_in,data_in,kernel_in,load_kernel_done,data_out,valid_out,lf_done,w1,w2,w3,w4,w5,w6,w7,w8,w9,k1,k2,k3,k4,k5,k6,k7,k8,k9/*,alu_out,df,kf*/);

input clk, reset, valid_in;
input [31:0] data_in,kernel_in;
output load_kernel_done,valid_out;
output [31:0] data_out;
output lf_done;
//output[31:0] alu_out,kf,df;
output [31:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,k1,k2,k3,k4,k5,k6,k7,k8,k9;
wire [31:0] alu_out;

/*int2float i2f_kernel(.in(kernel_in), .out(kf));
int2float i2f_data(.in(data_in),.out(df));*/

double_linebuffer dblb(.clk(clk),
						 .enable(valid_in), 
						 .reset(reset),
						 .in(data_in), 
						 .w1(w1),
						 .w2(w2),
						 .w3(w3),
						 .w4(w4),
						 .w5(w5),
						 .w6(w6),
						 .w7(w7),
						 .w8(w8),
						 .w9(w9),
						 .lf_done(lf_done)
						 );
						 
kernel ker1(.clk(clk), 
				.kernel_in(kernel_in), 
		  .load_kernel_done(load_kernel_done), 
		  .reset(reset),
		  .k1(k1),
		  .k2(k2),
		  .k3(k3),
		  .k4(k4),
		  .k5(k5),
		  .k6(k6),
		  .k7(k7),
		  .k8(k8),
		  .k9(k9)
		  );
		  
alu alu1(.clk(clk),
	  .reset(reset),
	  .enable(lf_done),
	  .w1(w1),
	  .w2(w2),
	  .w3(w3),
	  .w4(w4),
	  .w5(w5),
	  .w6(w6),
	  .w7(w7),
	  .w8(w8),
	  .w9(w9),
	  .k1(k1),
	  .k2(k2),
	  .k3(k3),
	  .k4(k4),
	  .k5(k5),
	  .k6(k6),
	  .k7(k7),
	  .k8(k8),
	  .k9(k9),
	  .out(alu_out),
	  .valid_out(valid_out)
	  );
relu rl(.in(alu_out), .out(data_out));
//floating2int f2i_out(.in(alu_out),.out(data_out));  
	  endmodule 