module FourSplit(input wire [3:0] I, output wire A, output wire B, output wire C, output wire D);
    assign A = I[3];
    assign B = I[2];
    assign C = I[1];
    assign D = I[0];
endmodule