module TriSegDriver(
    input wire [9:0] hex,          // 10-bit input signal
    output wire [6:0] O1,          // 7-segment output 1
    output wire [6:0] O2,          // 7-segment output 2
    output wire [6:0] O3           // 7-segment output 3
);

    // Assign 4-bit portions to each 7-segment driver
    wire [3:0] hex1 = hex[3:0];    // Lower 4 bits
    wire [3:0] hex2 = hex[7:4];    // Middle 4 bits
    wire [3:0] hex3 = {2'b00, hex[9:8]}; // Upper 2 bits, zero-extended to 4 bits

    // Instantiate SevSegDriver for each segment
    SevSegDriver seg1 (.hex(hex1), .O(O1));
    SevSegDriver seg2 (.hex(hex2), .O(O2));
    SevSegDriver seg3 (.hex(hex3), .O(O3));

endmodule