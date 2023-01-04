module carry_generate(P,G,C,Cin);
    parameter N = 2;
    input [N-1:0]P,G;
  	input Cin;
    output [N:0]C;
    assign C[0] =Cin;
    genvar i;
  	generate for(i=1;i<=N;i=i+1) begin
        assign C[i] = G[i-1] | (P[i-1]&C[i-1]);
    end
    endgenerate

endmodule
