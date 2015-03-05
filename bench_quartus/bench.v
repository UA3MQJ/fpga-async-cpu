module bench(sw, key0, key1, led0, led1, clk_out, clk50);

input wire [3:0] sw;
output wire led0, led1, clk_out;
input wire key0, key1, clk50;

wire x0 = sw[0:0];
wire x1 = sw[1:1];
wire y0 = sw[2:2];
wire y1 = sw[3:3];

assign led0 = wo10;
assign led1 = wo11;

wire w10,w11,w20,w21,w30,w31,w40,w41;
wire ko1, ki1;
wire ko2, ki2;

wire tl10, tl11, fl10, fl11;
threg1 reg_1(wi10, wi11, wo10, wo11, ko1, ki1, tl10, tl11, fl10, fl11, ~key0);

wire tl20, tl21, fl20, fl21;
threg1 reg_2(wi20, wi21, wo20, wo21, ko2, ki2, tl20, tl21, fl20, fl21, ~key0);

//соединение линий данных
assign wi10 = wo20;
assign wi11 = wo21;

assign wi20 = wo10;
assign wi21 = wo11;

//соединение ki = ko

assign ki1 = ko2;
assign ki2 = ko1;

//логика, навешенная на регистры
assign #50 fl10 = tl10;
assign #50 fl11 = tl11;

assign #50 fl20 = tl21;
assign #50 fl21 = tl20;

			
endmodule
