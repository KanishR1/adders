module ha(
    input A,B, output S,C
);
assign S = A^B;
assign C = A&B;

endmodule