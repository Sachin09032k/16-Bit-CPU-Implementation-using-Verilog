//////////////////////////////////////////////////////////////////////////////
////	This module describes a Arithmatic unit of ALU.			/////
///	This will have two inputs of 16 bits each.			/////
///	It has to provide either Arithmatic operation 			////
////////////////////////////////////////////////////////////////////////////
module arith(a,b,opcode,outau);
input [15:0] a;
input [15:0] b;
input [2:0] opcode;
output [15:0] outau;
reg [15:0] outau=0;

always@(a,b,opcode)
begin
	case(opcode)
	3'b000: outau = a+b;
	3'b001: outau = a * b;
	3'b010: if (a > b) begin
		outau = a - b;
		end
		else begin
		outau = b - a;
		end
	3'b011: if (a > b) begin
		outau = a / b;
		end
		else begin
		outau = b /a;
		end
	default outau = 16'h00000000;
	endcase
end
endmodule


	

