iverilog -o test -I../modules -y../modules bench.v
vvp test
pause
