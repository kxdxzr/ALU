module myreg(x, clk, enable, y);
	input[15:0] x;
	input clk,enable;
	output reg[15:0] y;

	always @ (posedge clk) begin
		if (enable == 1'b1)
			y <= x;
		end
endmodule 