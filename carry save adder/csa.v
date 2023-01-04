`include "rca.v"

module csa(
    input [3:0] a,b,c,d, output [4:0]sum, output cout
    );
  wire [3:0] s0,s1;
  wire [3:0] c0, c1;

fa M1( .A(a[0]), .B(b[0]), .Cin(c[0]), .S(s0[0]), .C(c0[0]));
fa M2( .A(a[1]), .B(b[1]), .Cin(c[1]), .S(s0[1]), .C(c0[1]));
fa M3( .A(a[2]), .B(b[2]), .Cin(c[2]), .S(s0[2]), .C(c0[2]));
fa M4( .A(a[3]), .B(b[3]), .Cin(c[3]), .S(s0[3]), .C(c0[3]));

fa M5( .A(d[0]), .B(s0[0]), .Cin(1'b0), .S(sum[0]), .C(c1[0]));
fa M6( .A(d[1]), .B(s0[1]), .Cin(c0[0]), .S(s1[0]), .C(c1[1]));
fa M7( .A(d[2]), .B(s0[2]), .Cin(c0[1]), .S(s1[1]), .C(c1[2]));
fa M8( .A(d[3]), .B(s0[3]), .Cin(c0[2]), .S(s1[2]), .C(c1[3]));

rca M9(.A(c1[3:0]),.B({c0[3],s1[2:0]}), .Cin(1'b0),.S(sum[4:1]), .Cout(cout));

endmodule