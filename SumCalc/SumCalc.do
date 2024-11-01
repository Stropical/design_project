vsim -gui work.SummationCalculator
add wave *

force CLK 0 0, 1 50 -r 100
force RST 1 0, 0 100
force A 10'b0000000100

run 1000