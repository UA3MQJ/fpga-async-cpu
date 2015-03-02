`timescale 1ns / 100 ps

module testbench();

initial
begin
    $display("begin");

    $dumpfile("test.vcd");
    $dumpvars(0,testbench);
end

//not test
reg [2:0] comb;
reg isnull;

wire z0, z1, c0, c1;
wire ta0 = (isnull == 1) ? 0 : ~comb[0:0];
wire tb0 = (isnull == 1) ? 0 : ~comb[1:1];
wire tc0 = (isnull == 1) ? 0 : ~comb[2:2];

wire #10 ta1 = (isnull == 1) ? 0 : ~ta0;
wire #10 tb1 = (isnull == 1) ? 0 : ~tb0;
wire #10 tc1 = (isnull == 1) ? 0 : ~tc0;


thfadd th_0(ta0, ta1, tb0, tb1, tc0, tc1, z0, z1, c0, c1);

initial
begin
	isnull <=1;
	#50;
	comb <= 3'd0;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd1;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd2;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd3;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd4;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd5;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd6;
	isnull <=0;
	#100;
	isnull <=1;
	#50;
	comb <= 3'd7;
	isnull <=0;
	#100;
	isnull <=1;
	#50;

	
end


endmodule
