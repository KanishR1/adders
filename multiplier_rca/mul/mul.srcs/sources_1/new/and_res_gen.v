`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 02:57:49 AM
// Design Name: 
// Module Name: and_res_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module and_res_gen #(parameter N = 16)(
    input [N-1:0]A,
    input [N-1:0]B,
    output [(N*N)-1:0]w
    );
    genvar i,j;
    generate 
    for(i=0;i<N;i=i+1) begin: l1
        for(j=0;j<N;j=j+1) begin :l2
            and_mod M1(.c(w[i+j]),.a(B[i]),.b(A[j]));
        end
    end
    endgenerate 
endmodule
