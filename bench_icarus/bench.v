`timescale 1ns / 100 ps
`define CLKHPeriod     1.0  // 1 ns
`define OneNS          1.0  // 1 ns или нс
`define OneUS       1000.0  // 1 us или мкс
`define OneMS    1000000.0  // 1 ms или мс
`define OneS  1000000000.0  // 1 ms или мс

`define reldelay 5 //время переключения реле

//1 MHz период такта 1us

module testbench();



initial
begin
    $display("begin");

    $dumpfile("test.vcd");
    $dumpvars(0,testbench);
end

//not test
reg  not_test;
wire not_test_result;
a_not a_not_module(not_test, not_test_result);

initial
begin
	not_test <= 1'bx;
	#50;
	not_test <= 1'bz;
	#50;
	not_test <= 1'b1;
	#50;
	not_test <= 1'bz;
	#50;
	not_test <= 1'b0;
	#50;
	not_test <= 1'bz;
	#50;
end

//and test
reg  and_test_a;
reg  and_test_b;
reg  and_test_c;
wire and_test_result;
a_and a_and_module(and_test_a, and_test_b, and_test_result);

wire or_test_result;
a_or a_or_module(and_test_a, and_test_b, or_test_result);

wire xor_test_result;
a_xor a_xor_module(and_test_a, and_test_b, xor_test_result);

wire hsum_test_result_s;
wire hsum_test_result_c;
a_hsum a_hsum_module(and_test_a, and_test_b, hsum_test_result_s, hsum_test_result_c);

wire fsum_test_result_s;
wire fsum_test_result_c;
a_fsum a_fsum_module(and_test_a, and_test_b, and_test_c, fsum_test_result_s, fsum_test_result_c);

initial
begin
	and_test_a <= 1'bx;
	and_test_b <= 1'bx;
	and_test_c <= 1'bx;	
	#50;
	and_test_a <= 1'bz;
	#50;
	and_test_b <= 1'bz;
	#50;
	and_test_c <= 1'bz;
	#50;
	and_test_a <= 1'b1;	
	#50;
	and_test_b <= 1'b1;
	#50;
	and_test_c <= 1'b0;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	#50;
	and_test_a <= 1'b1;	
	#50;
	and_test_b <= 1'b0;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	#50;
	and_test_a <= 1'b0;	
	#50;
	and_test_b <= 1'b1;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	#50;
	and_test_a <= 1'b0;	
	#50;
	and_test_b <= 1'b0;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;	
	#50;
	and_test_a <= 1'b1;	
	#50;
	and_test_b <= 1'b1;
	#50;
	and_test_c <= 1'b1;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	#50;
	and_test_a <= 1'b1;	
	#50;
	and_test_b <= 1'b0;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	#50;
	and_test_a <= 1'b0;	
	#50;
	and_test_b <= 1'b1;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	#50;
	and_test_a <= 1'b0;	
	#50;
	and_test_b <= 1'b0;
	#50;	
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	and_test_c <= 1'bz;
	#50;
	and_test_a <= 1'bz;
	and_test_b <= 1'bz;
	and_test_c <= 1'bz;
	#50;
end

endmodule
