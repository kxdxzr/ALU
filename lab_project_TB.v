`timescale 1ns / 1ps
 
module lab_project_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	reg [3:0] count;
	reg [15:0] data;
	reg [7:0] function_code;
	reg  clk;
	
	mydatapath dp (clk,data,function_code);
	

	initial begin 
		count = 6'b0000;
		clk = 1'b0;
	end
	
	always begin
		#60
		count=count+4'b0001;
	end
	
	always begin
		#10
		clk = 1'b0;
		#10
		clk = 1'b1;
	end	

	
	always @(count) begin
		case (count)
		4'b0000 : begin data = 16'b0000000000000000; function_code = 8'b00000000; end
		4'b0001 : begin data = 16'b0000000000000000; function_code = 8'b00000000; end
		4'b0010 : begin data = 16'b0000000000000000; function_code = 8'b00000000; end
		//load
		4'b0011 : begin data = 16'b0000000000000001; function_code = 8'b00000000; end
		4'b0100 : begin data = 16'b0000000000100000; function_code = 8'b00100000; end
		//3 times xor
		4'b0101 : begin data = 16'b0000000000000000; function_code = 8'b10100000; end
		4'b0110 : begin data = 16'b0000000000000000; function_code = 8'b10100000; end
		4'b0111 : begin data = 16'b0000000000000000; function_code = 8'b10100000; end
		4'b1000 : begin data = 16'b0000000100000000; function_code = 8'b00100000; end
		// xor with the other register
		//4'b1001 : begin data = 16'b0000000000000000; function_code = 8'b11000110; end
		// add
		//4'b1010 : begin data = 16'b0000000000000000; function_code = 8'b10000110; end
		//move
		//4'b1011 : begin data = 16'b0000000000000000; function_code = 8'b01000110; end
		//4'b1100 : begin data = 16'b0010000000000000; function_code = 8'b00000110; end
		default : begin data = 16'b0000000000000000; function_code = 8'b00000000; end
	endcase
	end

 
endmodule