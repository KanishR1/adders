`include "ha.v"
module fa_ha(
    input A,B,Cin, output S,C
);

wire w0,w1,w2;

ha M1(.A(A), .B(B), .S(w0), .C(w1));
ha M2(.A(Cin), .B(w0), .S(S), .C(w2));
assign C = w1|w2;

endmodule