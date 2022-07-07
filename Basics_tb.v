// We can write the testbench in the same file or different file

module tb_dff();	// Test bench does not take in any parameters
reg dtb,clktb;		// The input signals are now declared as registers as they store and display value
wire qtb,q_btb;		// Output signals just display the values, hence use then as wires

// Instantiantiation of the DFF module to the testbench using the formal parameters
dff d1 (.d(dtb), .clk(clktb), .q(qtb), .q_b(q_btb));

// Initialise the clock and input to 0 before starting to make sure no garbage vlaue
initial
begin
	clktb = 0;
	dtb=0;
end

// Make sure the clock changes logic value every 10ns
always #10 clktb = ~clktb;

// Different input to DFF
initial 
begin 
#20 dtb = 1'b1; 
#20 dtb = 1'b0;
end
endmodule
