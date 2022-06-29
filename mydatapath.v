module mydatapath (clk,data,function_code);
	input clk;
	input [15:0] data;
	input [7:0] function_code;
	wire [15:0] bus, alu_input1, alu_out, G_out, xor_input1, xor_output, H_out;
	wire [1:0]r0, r1, r2,r3,r4,r5,r6,r7,G,H;
	//r0 = R0inR0out r1 = ...
	//G = GinGout
	wire Ain, addSub, extern, Bin;
	wire [15:0] R0_out, R1_out, R2_out,R3_out,R4_out,R5_out,R6_out,R7_out,Q, D;
	wire rst;
	wire [1:0] cur_state, next_state;
	// Gout is the enable of tri_buf, G_out is the output of register G.
	//next_state(Q, D);

	myfsm fsm (function_code, extern, r0, r1, r2,r3,r4,r5,r6,r7,G,H, Ain, addSub, Bin,cur_state,rst);
	//sub_case_in);
	next_state n1 (cur_state, next_state);
	two_bit_reg reg1 (next_state, clk, rst, cur_state);
	// implement the data input tri-buffer
	tribuf datatri(.a(data), .b(bus), .enable(extern));
	
  
  
	//implement the R0,R1,R2,R3,R4,R5,R6,R7 with their own tri-buffer
	myreg R0 (.x(bus), .clk(clk), .enable(r0[1]), .y(R0_out));
	tribuf R0tri (.a(R0_out),.b(bus),.enable(r0[0]));
  
	myreg R1 (.x(bus), .clk(clk), .enable(r1[1]), .y(R1_out));
	tribuf R1tri (.a(R1_out),.b(bus),.enable(r1[0]));
  
	myreg R2 (.x(bus), .clk(clk), .enable(r2[1]), .y(R2_out));
	tribuf R2tri (.a(R2_out),.b(bus),.enable(r2[0]));
  
	myreg R3 (.x(bus), .clk(clk), .enable(r3[1]), .y(R3_out));
	tribuf R3tri (.a(R3_out),.b(bus),.enable(r3[0]));
  
  myreg R4 (.x(bus), .clk(clk), .enable(r4[1]), .y(R4_out));
	tribuf R4tri (.a(R4_out),.b(bus),.enable(r4[0]));
  
  myreg R5 (.x(bus), .clk(clk), .enable(r5[1]), .y(R5_out));
	tribuf R5tri (.a(R5_out),.b(bus),.enable(r5[0]));
  
  myreg R6 (.x(bus), .clk(clk), .enable(r6[1]), .y(R6_out));
	tribuf R6tri (.a(R6_out),.b(bus),.enable(r6[0]));
  
  myreg R7 (.x(bus), .clk(clk), .enable(r7[1]), .y(R7_out));
	tribuf R7tri (.a(R7_out),.b(bus),.enable(r7[0]));
	
  
  
	// implement the ALU part
	myreg A_reg (.x(bus), .clk(clk), .enable(Ain), .y(alu_input1));
	myalu myALU (.p(alu_input1),.q(bus),.addsub(addSub),.r(alu_out));
	myreg G_reg (.x(alu_out), .clk(clk), .enable(G[1]), .y(G_out));
	tribuf G_tri (.a(G_out),.b(bus),.enable(G[0]));
	
	// implement the xor part
	myreg B_reg (.x(bus), .clk(clk), .enable(Bin), .y(xor_input1));
	myxor myxor (.x(xor_input1), .y(bus), .z(xor_output));
	myreg H_reg (.x(xor_output), .clk(clk), .enable(H[1]), .y(H_out)); // change the of G_out
	tribuf H_tri (.a(H_out),.b(bus),.enable(H[0]));

endmodule 