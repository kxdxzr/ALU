module myfsm (function_code,extern,r0, r1, r2,r3,r4,r5,r6,r7, G,H, a_en, addsub, x_en, state,rst);
	input [7:0] function_code;
	// first two bits:
	//00 load
	//01 mov
	//10 add
	//11 xor
	// second and third is the index of R
	//000 R0
	//001 R1
	//010 R2
	//011 R3
  //100 R4
  //101 R5
  //110 R6
  //111 R7
  
	//e.g. MOV R0 R1 = 010001
	//e.g. load R0 value = 0000, the load value is an individual input for the finite-state machine
	
	//input [2:0] data;
	input [1:0] state;
	//input [1:0] sub_case_in;
	output reg extern, a_en, addsub, x_en, rst;
	output reg [1:0]r0, r1, r2,r3,r4,r5,r6,r7,G,H; //r0 = R0inR0out r1 = ...
	
	always @(function_code or state) begin
		case (function_code)
		//load
		//load to R0
		8'b00000000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		//load to R1
		8'b00001000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		//load to R2
		8'b00010000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//load to R3			
		8'b00011000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		//load to R4		
		8'b00100000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		//load to R5		
		8'b00101000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		//load to R6		
		8'b00110000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		//load to R7		
		8'b00111000: begin 
							case(state)
								2'b00: begin extern <=1; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
//move
		//load others to R0
		8'b01000001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
						
		8'b01000010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01000011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01000100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		8'b01000101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01000110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		8'b01000111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		//load others to R1
		8'b01001000: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		8'b01001010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01001011: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
		8'b01001100: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		8'b01001101: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		8'b01001110: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		8'b01001111: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
		//load others to R2
		8'b01010000: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		8'b01010001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01010011: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01010100: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01010101: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01010110: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		8'b01010111: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		//load others to R3
		//R0
		8'b01011000: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R1			
		8'b01011001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
      //R2      
		8'b01011010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R4
		8'b01011100: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R5
		8'b01011101: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R6
		8'b01011110: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R7
		8'b01011111: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
		//load others to R4
		//R0
		8'b01100000: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R1			
		8'b01100001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
      //R2      
		8'b01100010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R3
		8'b01100011: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R5
		8'b01100101: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R6
		8'b01100110: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//R7
		8'b01100111: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    //load others to R5
    8'b01101000: begin 
					    case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01101001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
		8'b01101010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01101011: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01101100: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end       
            
    8'b01101110: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
    8'b01101111: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
    //load others to R6
    8'b01110000: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01110001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
		8'b01110010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01110011: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01110100: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end       
            
    8'b01110101: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
    8'b01110111: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    //load others to R7
    8'b01111000: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01111001: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
		8'b01111010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01111011: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
            
    8'b01111100: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end       
            
    8'b01111101: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
    8'b01111110: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b10;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
								//default: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;G=2'b00;a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
//add
		//add R1 to R0
		8'b10000001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		//add R2 to R0					  
		8'b10000010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
    //add R3 to R0
		8'b10000011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
    //add R4 to R0
		8'b10000100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end		
    
    //add R5 to R0
		8'b10000101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    //add R6 to R0
		8'b10000110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
    //add R7 to R0
		8'b10000111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end				
		//add R0 to R1
		8'b10001000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end			
		
		//add R2 to R1
		8'b10001010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
		//add R3 to R1
		8'b10001011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
		//add R4 to R1
		8'b10001100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
		//add R5 to R1
		8'b10001101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//add R6 to R1
		8'b10001110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	  
		//add R7 to R1
		8'b10001111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	            
		
		//add R0 to R2
		8'b10010000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
		
		//add R1 to R2
		8'b10010001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//add R3 to R2
		8'b10010011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//add R4 to R2
		8'b10010100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end   
		//add R5 to R2
		8'b10010101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//add R6 to R2
		8'b10010110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//add R7 to R2
		8'b10010111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end            
    //add R0 to R3
		8'b10011000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    //add R1 to R3
		8'b10011001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    //add R2 to R3
		8'b10011010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    //add R4 to R3
		8'b10011100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    //add R5 to R3
		8'b10011101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end  
     //add R6 to R3
		8'b10011110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
     //add R7 to R3
		8'b10011111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R0 to R4
		8'b10100000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R1 to R4
		8'b10100001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
     //add R2 to R4
		8'b10100010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
     //add R3 to R4
		8'b10100011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R5 to R4
		8'b10100101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R6 to R4
		8'b10100110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R7 to R4
		8'b10100111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end  
     //add R0 to R5
		8'b10101000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end  
     //add R1 to R5
		8'b10101001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end   
     //add R2 to R5
		8'b10101010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R3 to R5
		8'b10101011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end             
     //add R4 to R5
		8'b10101100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end             
     //add R6 to R5
		8'b10101110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end             
            
     //add R7 to R5
		8'b10101111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end     
     //add R0 to R6
		8'b10110000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end         
      //add R1 to R6
		8'b10110001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
     //add R2 to R6
		8'b10110010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end              
    
     //add R3 to R6
		8'b10110011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
     //add R4 to R6
		8'b10110100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end                
     //add R5 to R6
		8'b10110101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=1;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end     
     //add R7 to R6
		8'b10110111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end     
    
    //add R0 to R7
		8'b10111000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
    //add R1 to R7
    8'b10111001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		//add R2 to R7					  
		8'b10111010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
    //add R3 to R7
		8'b10111011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		
    //add R4 to R7
		8'b10111100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
    //add R5 to R7
		8'b10111101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    //add R6 to R7
		8'b10111110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=1;addsub=0;x_en=0;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b10; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b01; H = 2'b00; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	

		
    //XOR R1 to R0
		8'b11000001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		//XOR R2 to R0					  
		8'b11000010: begin 
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
    
      //XOR R3 to R0
		8'b11000011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
      //XOR R4 to R0
		8'b11000100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
						
		//XOR R5 to R0
		8'b11000101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end			
		
		//XOR R6 to R0
		8'b11000110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end		
		
		//XOR R7 to R0
		8'b11000111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b10;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end	
		
		//XOR R0 to R1
		8'b11001000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R2 to R1
		8'b11001010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R3 to R1
		8'b11001011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R4 to R1
		8'b11001100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R5 to R1
		8'b11001101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R6 to R1
		8'b11001110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R7 to R1
		8'b11001111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b10;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		
		//XOR R0 to R2
		8'b11010000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//XOR R1 to R2
		8'b11010001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R3 to R2
		8'b11010011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R4 to R2
		8'b11010100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R5 to R2
		8'b11010101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R6 to R2
		8'b11010110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R7 to R2
		8'b11010111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b10;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R0 to R3
		8'b11011000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R1 to R3
		8'b11011001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R2 to R3
		8'b11011010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R4 to R3
		8'b11011100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R5 to R3
		8'b11011101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R6 to R3
		8'b11011110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R7 to R3
		8'b11011111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b10;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//XOR R0 to R4
		8'b11100000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R1 to R4
		8'b11100001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R2 to R4
		8'b11100010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R3 to R4
		8'b11100011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R5 to R4
		8'b11100101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R6 to R4
		8'b11100110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R7 to R4
		8'b11100111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b10;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//XOR R0 to R5
		8'b11101000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R1 to R5
		8'b11101001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R2 to R5
		8'b11101010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R3 to R5
		8'b11101011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R4 to R5
		8'b11101100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R6 to R5
		8'b11101110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R7 to R5
		8'b11101111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b10;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//XOR R0 to R6
		8'b11110000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R1 to R6
		8'b11110001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R2 to R6
		8'b11110010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R3 to R6
		8'b11110011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R4 to R6
		8'b11110100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R5 to R6
		8'b11110101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R7 to R6
		8'b11110111: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b10;r7=2'b00;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
		//XOR R0 to R7
		8'b11111000: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b01;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R1 to R7
		8'b11111001: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R2 to R7
		8'b11111010: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b01;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R3 to R7
		8'b11111011: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b01;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R4 to R7
		8'b11111100: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b01;r5=2'b00;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R5 to R7
		8'b11111101: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b01;r6=2'b00;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end 
		//XOR R6 to R7
		8'b11111110: begin
							case(state)
								2'b00: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b01;G=2'b00; H = 2'b00; a_en=0;addsub=0;x_en=1;rst = 0; end
								2'b01: begin extern <=0; r0=2'b00;r1=2'b01;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b01;r7=2'b00;G=2'b00; H = 2'b10; a_en=0;addsub=0;x_en=0;rst = 0; end
								2'b10: begin extern <=0; r0=2'b00;r1=2'b00;r2=2'b00;r3=2'b00;r4=2'b00;r5=2'b00;r6=2'b00;r7=2'b10;G=2'b00; H = 2'b01; a_en=0;addsub=0;x_en=0;rst = 1; end
							endcase
						end
				
		endcase
		end
		
endmodule 