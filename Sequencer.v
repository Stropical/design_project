module Sequencer(input wire CLK, input wire RST, output reg SEL);

    reg first_cycle;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            SEL <= 0;           // Turn SEL off initially
            first_cycle <= 1;   // Flag for the first cycle after reset
        end else if (first_cycle) begin
            SEL <= 0;           // Keep SEL off for the first clock cycle
            first_cycle <= 0;   // Clear the first cycle flag
        end else begin
            SEL <= 1;           // Turn SEL on for all subsequent cycles
        end
    end

endmodule
