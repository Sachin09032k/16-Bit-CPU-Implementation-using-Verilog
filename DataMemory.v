//////////////////////////////////////////////////////////////////////
//	Program to realise Datamemory in the CPU		/////
////////////////////////////////////////////////////////////////////

module datamem(clk, we_DM, dataDM, addDM, outDM);
input clk;
input we_DM;
input [15:0] dataDM;
input [11:0] addDM;
output [15:0] outDM;

reg [15:0] outDM;

// Memory is an array stored at particular address

reg [15:0] mem [0 : 31];

always@(posedge clk)
begin
	if (we_DM == 1) begin
	mem[addDM] = dataDM;
	end
	
	else if (we_DM == 0) begin
	outDM = mem[addDM];
	end
end
endmodule



