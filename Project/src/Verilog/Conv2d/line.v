module line	#(parameter size_buffer = 32)(clk,reset,datain,dataout);
//hihi
input clk,reset;
input [31:0]datain;
output [31:0]dataout;


wire [31:0] Q1 [size_buffer-1:0];

dff_define d0(.Q(Q1[0]), .clk(clk), .D(datain),.rstn(reset));
dff_define d1(.Q(Q1[1]), .clk(clk), .D(Q1[0]),.rstn(reset));
dff_define d2(.Q(Q1[2]), .clk(clk), .D(Q1[1]),.rstn(reset));
dff_define d3(.Q(Q1[3]), .clk(clk), .D(Q1[2]),.rstn(reset));
dff_define d4(.Q(Q1[4]), .clk(clk), .D(Q1[3]),.rstn(reset));
dff_define d5(.Q(Q1[5]), .clk(clk), .D(Q1[4]),.rstn(reset));
dff_define d6(.Q(Q1[6]), .clk(clk), .D(Q1[5]),.rstn(reset));
dff_define d7(.Q(Q1[7]), .clk(clk), .D(Q1[6]),.rstn(reset));
dff_define d08(.Q(Q1[8]), .clk(clk), .D(Q1[7]),.rstn(reset));
dff_define d09(.Q(Q1[9]), .clk(clk), .D(Q1[8]),.rstn(reset));
dff_define d10(.Q(Q1[10]), .clk(clk), .D(Q1[9]),.rstn(reset));
dff_define d11(.Q(Q1[11]), .clk(clk), .D(Q1[10]),.rstn(reset));
dff_define d12(.Q(Q1[12]), .clk(clk), .D(Q1[11]),.rstn(reset));
dff_define d13(.Q(Q1[13]), .clk(clk), .D(Q1[12]),.rstn(reset));
dff_define d14(.Q(Q1[14]), .clk(clk), .D(Q1[13]),.rstn(reset));
dff_define d15(.Q(Q1[15]), .clk(clk), .D(Q1[14]),.rstn(reset));
dff_define d16(.Q(Q1[16]), .clk(clk), .D(Q1[15]),.rstn(reset));
dff_define d17(.Q(Q1[17]), .clk(clk), .D(Q1[16]),.rstn(reset));
dff_define d18(.Q(Q1[18]), .clk(clk), .D(Q1[17]),.rstn(reset));
dff_define d19(.Q(Q1[19]), .clk(clk), .D(Q1[18]),.rstn(reset));
dff_define d20(.Q(Q1[20]), .clk(clk), .D(Q1[19]),.rstn(reset));
dff_define d21(.Q(Q1[21]), .clk(clk), .D(Q1[20]),.rstn(reset));
dff_define d22(.Q(Q1[22]), .clk(clk), .D(Q1[21]),.rstn(reset));
dff_define d23(.Q(Q1[23]), .clk(clk), .D(Q1[22]),.rstn(reset));
dff_define d24(.Q(Q1[24]), .clk(clk), .D(Q1[23]),.rstn(reset));
dff_define d25(.Q(Q1[25]), .clk(clk), .D(Q1[24]),.rstn(reset));
dff_define d26(.Q(Q1[26]), .clk(clk), .D(Q1[25]),.rstn(reset));
dff_define d27(.Q(Q1[27]), .clk(clk), .D(Q1[26]),.rstn(reset));
dff_define d28(.Q(Q1[28]), .clk(clk), .D(Q1[27]),.rstn(reset));
dff_define d29(.Q(Q1[29]), .clk(clk), .D(Q1[28]),.rstn(reset));
dff_define d30(.Q(Q1[30]), .clk(clk), .D(Q1[29]),.rstn(reset));
dff_define d31(.Q(Q1[31]), .clk(clk), .D(Q1[30]),.rstn(reset));

/*write*/

assign dataout = Q1[size_buffer-1];
endmodule