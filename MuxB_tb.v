///////////////////////////////////////////////////////
//// Testbench for the Design of Multiplxer  //////
/////////////////////////////////////////////////////

module muxB_tb();
reg clk,sel;
reg [15:0] in1,in2;
wire [15:0] outB;

// Initialise the input signals
initial
begin
	clk<=1'b0;
	in1=0;
	in2=0;
	sel=0;
end

// Instantiation of the Mux module

muxB m1(.clk(clk), .sel(sel), .in1(in1), .in2(in2), .outB(outB));

// Clock signal every 10ns

always #10 clk = ~clk;
always #5 sel = ~sel;

// Stimulus for checking the working of Mux

initial
begin
	#5 in1 = 16'h0001;
	#5 in2 = 16'h0010;
	#5 in1 = 16'h0010;
	#5 in2 = 16'h0011;
end

endmodule
	