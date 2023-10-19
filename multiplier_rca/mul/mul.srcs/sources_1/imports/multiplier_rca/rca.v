module rca #(parameter INPUT_SIZE = 16 )(
    input [INPUT_SIZE-1:0] A, input [INPUT_SIZE-1:0] B, input Cin, output [INPUT_SIZE-1:0] S
);
    wire [INPUT_SIZE:0]c;
    assign c[0] = Cin;
    wire [INPUT_SIZE-1:0]sum;
    genvar i;
    generate 
    for(i=0;i<INPUT_SIZE;i=i+1) begin : ripple
    	fa M1(.A(A[i]), .B(B[i]), .Cin(c[i]), .S(sum[i]), .C(c[i+1]));
    end
    endgenerate
    assign S = c[16] ? {c[INPUT_SIZE],sum[INPUT_SIZE-1 : 1]} : sum;

endmodule