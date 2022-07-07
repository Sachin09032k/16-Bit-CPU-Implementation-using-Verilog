// Sample code for D flip flop in Verilog
// Verilog starts with the module name followed by the parameter list
module dff( d,clk,q,q_b);
input d,clk;		// Define the input
output q,q_b;		// Define the output
wire d,clk;		// To use as input, the signals must be declared as wire
reg q,q_b;		// To use as output, the signals must be declared as resgister

// Wire is used for signals that just connect two points
// Registers are sued to define signals that need to store and output the signals

always@(posedge clk)	// During the positive edge of clock
begin
	q<=d;		// Assigns q to D
	q_b<= !d;	// Assigns q_b to not of D
end
endmodule



