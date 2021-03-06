module myalu (p,q,addsub,r);
	input [15:0] p,q;
	input addsub;
	output reg[15:0]r;
	
	always @(p or q or addsub) begin
		if (addsub == 1'b1)
			r <= p+(~q)+1'b1;
		else if (addsub == 1'b0)
			r <= p+q;
		end
	
endmodule 