module tb;
reg [3:0]A,B;
reg Cin;
wire [3:0]S;
wire Cout;

csa DUT(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

integer i,j,k;
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,tb);

    for(i=0;i<2;i=i+1)
    begin
      for(j=0;j<16;j=j+1)
      begin
        for (k=0;k<16;k=k+1)
        begin
            A = j;
            B = k;
            Cin = i;
            #10;
        end
      end
    end
end
    
endmodule