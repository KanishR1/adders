module propagate_generate(A,B,P,G);
    parameter N = 2;
    input [N-1 :0] A,B;
    output [N-1 :0]P,G;

    assign P = A^B;
    assign G = A&B;

endmodule


