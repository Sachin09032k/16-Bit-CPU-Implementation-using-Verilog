////////////////////////////////////////////////////////////////
//	Test bench for the logic unit			///////
///////////////////////////////////////////////////////////////

module tb_logic();
reg [15:0] a;
reg [15:0] b;
reg [2:0] opcode;
wire [15:0] outlu;
wire za, zb,eq,gt,lt;

// Instantiation of the module

logic l1 (.a(a), .b(b), .opcode(opcode), .outlu(outlu), .za(za), .zb(zb), .eq(eq), .gt(gt), .lt(lt));

// Initialization

initial
begin
	a = 16'h0000;
	b = 16'h0000;
	opcode = 3'b000;
end

// Stimulus must be writte in such a way that we test all the cases for input conditions.
initial
begin
	// When A>B test all the conditions
	#10 a = 16'h0009;
	b <= 16'h0005;
	# 5 opcode = 3'b001;
	# 5 opcode = 3'b010;
	# 5 opcode = 3'b011;
	# 5 opcode = 3'b100;
	# 5 opcode = 3'b101;
	# 5 opcode = 3'b110;
	# 5 opcode = 3'b111;

	// When A<B test all the cases
	#10 a = 16'h0003;
	b = 16'h000F;
	# 5 opcode = 3'b001;
	# 5 opcode = 3'b010;
	# 5 opcode = 3'b011;
	# 5 opcode = 3'b100;
	# 5 opcode = 3'b101;
	# 5 opcode = 3'b110;
	# 5 opcode = 3'b111;
	
	// When A=B test all the conditions
	#10 a = 16'h00E9;
	b = 16'h00E9;
	# 5 opcode = 3'b001;
	# 5 opcode = 3'b010;
	# 5 opcode = 3'b011;
	# 5 opcode = 3'b100;
	# 5 opcode = 3'b101;
	# 5 opcode = 3'b110;
	# 5 opcode = 3'b111;

	// Test ZA
	#10 a <= 16'h0000;

	// Test ZB
	#10 b <= 16'h0000;
end
endmodule
