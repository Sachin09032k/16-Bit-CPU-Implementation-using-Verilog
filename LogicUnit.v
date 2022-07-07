//////////////////////////////////////////////////////////////////////////////
////	This module describes a Logic unit of ALU.			/////
///	This will have two inputs of 16 bits each.			/////
///	It has to provide either logic operation 			////
////////////////////////////////////////////////////////////////////////////
module logic(a,b,opcode,outlu,za,zb,eq,gt,lt);
input [15:0] a;
input [15:0] b;
input [2:0] opcode;
output [15:0] outlu=0;
output za=0, zb=0,eq=0,gt=0,lt=0;

reg [15:0] outlu;
reg za,zb,eq,gt,lt;

always@(a,b,opcode)
begin
	case(opcode)
	3'b000: outlu = (a & b);
	3'b001: outlu = (a | b);
	3'b010: outlu = (~(a | b));
    3'b011: outlu = (~(a & b));
	3'b100: outlu = (~ a);
	3'b101: outlu = (~ b);
	3'b110: outlu = (a ^ b);
	3'b111: outlu = (~(a ^ b));
	endcase
end

always@(a,b)
begin
	if( a == b) begin
	eq = 1;
	end
	else begin
	eq = 0;
	end

	if ( a > b) begin
	gt = 1;
	end
	else begin
	gt = 0;
	end

	if ( a < b) begin
	lt = 1;
	end
	else begin
	lt = 0;
	end
	
	if( a == 16'h0000) begin
	za = 1;
	end
	else begin
	za = 0;
	end
	
	if (b == 16'h0000) begin
	zb = 1;
	end
	else begin
	zb = 0;
	end
end
endmodule



