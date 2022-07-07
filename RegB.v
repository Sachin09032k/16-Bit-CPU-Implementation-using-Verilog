////////////////////////////////////////////////////////////////////////////////////////////
//	Program to realise a Register. The operation depends on Clock and load		///
///////////////////////////////////////////////////////////////////////////////////////////

module regB (clk, loadB, dataBin, dataBout);
input clk;
input loadB;
input [15:0] dataBin;
output [15:0] dataBout;

reg [15:0] dataBout;
reg [15:0] tempB;

always@(clk,loadB)
begin
	@(posedge clk) 
	begin
		if ( loadB == 1) begin
		dataBout <= dataBin;
		tempB <= dataBin;
		end

		else if (loadB == 0) begin
		dataBout <= tempB;
		end
	end
end
endmodule


