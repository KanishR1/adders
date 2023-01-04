module propagate_generator(
    input [3:0]A,B, output [3:0]P
    );
    assign P = A^B;
endmodule


