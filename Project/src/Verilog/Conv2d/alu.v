//delay 3 clk
module alu (clk,reset,enable,w1,w2,w3,w4,w5,w6,w7,w8,w9,k1,k2,k3,k4,k5,k6,k7,k8,k9,out,valid_out);

input [31:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,k1,k2,k3,k4,k5,k6,k7,k8,k9;
input clk, enable,reset;
output [31:0] out;
output valid_out;

wire [31:0] p1,p2,p3,p4,p5,p6,p7,p8,p9;
wire [31:0] a1,a2,a3,a4,a5,x1,x2,x3,x4,x5;

counter #(.time_counter(4)) c1 (.clk(clk),.reset(reset) ,.lf_done(valid_out),.enable(enable));

//1 clk
fp_mul mul1(.A(k1),
				.B(w1),
				.C(p1),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul2(.A(k2),
				.B(w2),
				.C(p2),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul3(.A(k3),
				.B(w3),
				.C(p3),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul4(.A(k4),
				.B(w4),
				.C(p4),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul5(.A(k5),
				.B(w5),
				.C(p5),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul6(.A(k6),
				.B(w6),
				.C(p6),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul7(.A(k7),
				.B(w7),
				.C(p7),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul8(.A(k8),
				.B(w8),
				.C(p8),
				.enable(enable),
				.clk(clk)
				);
fp_mul mul9(.A(k9),
				.B(w9),
				.C(p9),
				.enable(enable),
				.clk(clk)
				);	


//1 clk				
fp_add add1(.A(p1),.B(p2),.C(a1),.enable(enable), .clk(clk));	
fp_add add2(.A(p3),.B(p4),.C(a2),.enable(enable), .clk(clk));		
fp_add add3(.A(p5),.B(p6),.C(a3),.enable(enable), .clk(clk));		
fp_add add4(.A(p7),.B(p8),.C(a4),.enable(enable), .clk(clk));	
fp_add add5(.A(p9),.B(32'b0),.C(a5),.enable(enable), .clk(clk));	
//1 clk
fp_add add6(.A(a1),.B(a2),.C(x1),.enable(enable), .clk(clk));	
fp_add add7(.A(a3),.B(a4),.C(x2),.enable(enable), .clk(clk));
fp_add add8(.A(a5),.B(32'b0),.C(x3),.enable(enable), .clk(clk));	
//1 clk
fp_add add9(.A(x1),.B(x2),.C(x4),.enable(enable), .clk(clk));		
fp_add add10(.A(x3),.B(32'b0),.C(x5),.enable(enable), .clk(clk));	
//1 clk
fp_add add11(.A(x4),.B(x5),.C(out),.enable(enable), .clk(clk));						
endmodule 