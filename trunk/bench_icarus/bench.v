`timescale 1ns / 100 ps

module testbench();

initial
begin
    $display("begin");

    $dumpfile("test.vcd");
    $dumpvars(0,testbench);
end

//not test
reg  ta0,ta1,tb0,tb1;

wire result0, result1;

thor thor_0(ta0, ta1, tb0, tb1, result0, result1);

initial
begin
	ta0 <= 0; // a = null
	ta1 <= 0; //
	tb0 <= 0; // b = null
	tb1 <= 0; //
	#100;
	ta0 <= 1; // a = 0
	ta1 <= 0; //
	tb0 <= 0; // b = null
	tb1 <= 0; //
	#100;
	ta0 <= 1; // a = 0
	ta1 <= 0; //
	tb0 <= 1; // b = 0
	tb1 <= 0; //
	#100;
	ta0 <= 0; // a = null
	ta1 <= 0; //
	tb0 <= 0; // b = null
	tb1 <= 0; //
	#100;
	ta0 <= 1; // a = 0
	ta1 <= 0; //
	tb0 <= 0; // b = null
	tb1 <= 0; //
	#100;
	ta0 <= 1; // a = 0
	ta1 <= 0; //
	tb0 <= 0; // b = 1
	tb1 <= 1; //
	#100;
	ta0 <= 0; // a = null
	ta1 <= 0; //
	tb0 <= 0; // b = null
	tb1 <= 0; //
	#100;
	ta0 <= 0; // a = 1
	ta1 <= 1; //
	tb0 <= 0; // b = null
	tb1 <= 0; //
	#100;
	ta0 <= 0; // a = 1
	ta1 <= 1; //
	tb0 <= 0; // b = 1
	tb1 <= 1; //
	#100;


	
end


endmodule
