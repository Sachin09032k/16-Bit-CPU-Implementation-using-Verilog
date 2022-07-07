////////////////////////////////////////////////////////////////////////////////////////////
//	Program to realise a Register. The operation depends on Clock and load		///
///////////////////////////////////////////////////////////////////////////////////////////

module regA (clk, loadA, dataAin, dataAout);
input clk;
input loadA;
input [15:0] dataAin;
output [15:0] dataAout;

reg [15:0] dataAout;
reg [15:0] tempA;

always@(clk,loadA)
begin
	@(posedge clk) 
	begin
		if ( loadA == 1) begin
		dataAout <= dataAin;
		tempA <= dataAin;
		end

		else if (loadA == 0) begin
		dataAout <= tempA;
		end
	end
end
endmodule



