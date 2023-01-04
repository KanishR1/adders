`include "rca.v"
`include "mux2x1.v"

module csa (
    input [3:0]A,B, input Cin, output [3:0]S, output Cout
);
    wire [3:0]x,y;
    wire z,w;
    rca M1(.A(A), .B(B), .Cin(1'b0), .S(x), .Cout(z));
    rca M2(.A(A), .B(B), .Cin(1'b1), .S(y), .Cout(w));
    mux2x1 M3(.I({w,z}), .S(Cin), .Y(Cout));

    mux2x1 M4(.I({y[0],x[0]}), .S(Cin), .Y(S[0]));
    mux2x1 M5(.I({y[1],x[1]}), .S(Cin), .Y(S[1]));
    mux2x1 M6(.I({y[2],x[2]}), .S(Cin), .Y(S[2]));
    mux2x1 M7(.I({y[3],x[3]}), .S(Cin), .Y(S[3]));


endmodule