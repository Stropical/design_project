module FourCombine(input wire A, input wire B, input wire C, input wire D, output wire [3:0] I);
    assign I[3] = A;
    assign I[2] = B;
    assign I[1] = C;
    assign I[0] = D;
endmodule