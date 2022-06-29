module myxor(x, y, enable, z);
   input [15:0] x, y;
	input enable;
	output reg[15:0] z;
	
	always @(x or y) begin
	   z = x ^ y;
		end
endmodule 