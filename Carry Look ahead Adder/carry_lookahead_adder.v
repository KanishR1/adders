`include "carry_generate.v"
`include "propagate_generate.v"
module carry_lookahead_adder(A,B,S,Cout,Cin);
    parameter N = 2;
    
    input [N-1:0]A,B;
    input Cin;
    output [N-1:0]S;
  	output Cout;

    wire [N-1:0]P, G ;
    wire [N:0]C;
    propagate_generate #(.N(N)) M1(.A(A), .B(B), .P(P), .G(G));
    carry_generate #(.N(N)) M2 (.P(P), .G(G), .C(C), .Cin(Cin));

    assign S = P ^ C;
    assign Cout = C[N];

endmodule