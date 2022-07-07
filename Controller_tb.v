///////////////////////////////////////////////////////////////
///////// Testbench for controller ///////////////////////////
//////////////////////////////////////////////////////////////
module tb_controller ();
reg clk;
reg en;
reg [3:0] opcode;
wire loadA;
wire loadB;
wire loadC;
wire loadIR;
wire loadPC;
wire incPC;
wire mode;
wire we_DM;
wire selA;
wire selB;

// Design instantiation
controller c1 (.clk(clk), .en(en), .opcode(opcode), .loadA(loadA), .loadB(loadB), .loadC(loadC), .loadIR(loadIR), .loadPC(loadPC), .incPC(incPC), .mode(mode), .we_DM(we_DM), .selA(selA), .selB(selB));

// initialization
initial
begin
	clk = 0;
	en = 0;
	opcode = 4'b0000;
end
// Clock setup
always #5 clk = ~clk;

// Stimulus
initial
begin
	#10 en = 1;
	opcode = 4'b0001;
	
	#20 opcode = 4'b0001;

	#20 opcode = 4'b0010;
end
endmodule 