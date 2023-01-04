`include "rca.v"
`include "propagate_generator.v"
`include "mux2x1.v"

module csa (
    input [3:0]A,B, input Cin, output [3:0]S, output Cout
);
wire [3:0]p;
wire c,pm;

rca M1(.A(A), .B(B), .S(S), .Cout(c));
propagate_generator M2(.A(A), .B(B), .P(p));
assign pm  = (&p);
mux2x1 M3(.I({Cin,c}), .S(pm), .Y(Cout));
    
endmodule