module SummationCalculator(input wire [9:0] A, input wire CLK, input wire RST, output reg [9:0] SEG_OUT);
    // Setup state variables
    reg [9:0] SUM;
    reg [9:0] COUNT;

    // Setup state machine
    always @(posedge CLK) begin
        if (RST) begin
            SUM <= 10'd0;           // Initialize SUM with A on reset
            COUNT <= A;             // Initialize COUNT to A
            SEG_OUT <= 10'd0;       // Initialize SEG_OUT to zero on reset
        end else if (COUNT == 10'd0) begin
            SEG_OUT <= SUM;         // Output the result when COUNT reaches zero
        end else begin
            COUNT <= COUNT - 10'd1; // Decrement COUNT
            SUM <= SUM + COUNT;     // Accumulate SUM with COUNT
            SEG_OUT <= SUM;       // Keep SEG_OUT zero until COUNT is zero
        end
    end
endmodule
