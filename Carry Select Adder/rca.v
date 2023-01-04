`include "fa.v"
module rca(
    input [3:0] A, input [3:0] B, input Cin, output [3:0] S, output Cout
);
    wire [2:0]C;

    fa M1(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .C(C[0]));
    fa M2(.A(A[1]), .B(B[1]), .Cin(C[0]), .S(S[1]), .C(C[1]));
    fa M3(.A(A[2]), .B(B[2]), .Cin(C[1]), .S(S[2]), .C(C[2]));
    fa M4(.A(A[3]), .B(B[3]), .Cin(C[2]), .S(S[3]), .C(Cout));

endmodule