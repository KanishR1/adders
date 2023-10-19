`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 03:18:09 AM
// Design Name: 
// Module Name: mul
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


module mul(
input [15:0] A,
input [15:0] B,
output [31:0]P
    );
    wire [255:0]w;
    wire [209:0]s;
    and_res_gen #(.N(16)) M1(.A(A), .B(B), .w(w));
    assign P[0] = w[0];
    assign P[31] = 1'b0;
    rca #(.INPUT_SIZE(16)) M2( .A({1'b0,w[15:1]}), .B(w[31:16]), .Cin(0), .S({s[14:0],P[1]}));
    rca #(.INPUT_SIZE(16)) M3( .A({1'b0,s[14:0]}), .B(w[47:32]), .Cin(0), .S({s[29:15],P[2]}));
    rca #(.INPUT_SIZE(16)) M4( .A({1'b0,s[29:15]}), .B(w[63:48]), .Cin(0), .S({s[44:30],P[3]}));
    rca #(.INPUT_SIZE(16)) M5( .A({1'b0,s[44:30]}), .B(w[79:64]), .Cin(0), .S({s[59:45],P[4]}));
    rca #(.INPUT_SIZE(16)) M6( .A({1'b0,s[59:45]}), .B(w[95:80]), .Cin(0), .S({s[74:60],P[5]}));
    rca #(.INPUT_SIZE(16)) M7( .A({1'b0,s[74:60]}), .B(w[111:96]), .Cin(0), .S({s[89:75],P[6]}));
    rca #(.INPUT_SIZE(16)) M8( .A({1'b0,s[89:75]}), .B(w[127:112]), .Cin(0), .S({s[104:90],P[7]}));
    rca #(.INPUT_SIZE(16)) M9( .A({1'b0,s[104:90]}), .B(w[143:128]), .Cin(0), .S({s[119:105],P[8]}));
    rca #(.INPUT_SIZE(16)) M10( .A({1'b0,s[119:105]}), .B(w[159:144]), .Cin(0), .S({s[134:120],P[9]}));
    rca #(.INPUT_SIZE(16)) M11( .A({1'b0,s[134:120]}), .B(w[175:160]), .Cin(0), .S({s[149:135],P[10]}));
    rca #(.INPUT_SIZE(16)) M12( .A({1'b0,s[149:135]}), .B(w[191:176]), .Cin(0), .S({s[164:150],P[11]}));
    rca #(.INPUT_SIZE(16)) M13( .A({1'b0,s[164:150]}), .B(w[207:192]), .Cin(0), .S({s[179:165],P[12]}));
    rca #(.INPUT_SIZE(16)) M14( .A({1'b0,s[179:165]}), .B(w[223:208]), .Cin(0), .S({s[194:180],P[13]}));
    rca #(.INPUT_SIZE(16)) M15( .A({1'b0,s[194:180]}), .B(w[239:224]), .Cin(0), .S({s[209:195],P[14]}));
    rca #(.INPUT_SIZE(16)) M16( .A({1'b0,s[209:195]}), .B(w[255:240]), .Cin(0), .S({P[30:16],P[15]}));
    
    
    
endmodule
