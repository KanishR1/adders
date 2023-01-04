module tb;
wire [4:0] sum;//output
wire cout;//output
reg [3:0] a,b,c,d;//input
 
 csa uut(
.a(a),
.b(b),
.c(c),
 .d(d),
.sum(sum),
.cout(cout));
 
initial begin
$dumpfile("output.vcd");
$dumpvars(0,tb);
$display($time, " << Starting the Simulation >>");
     a=0; b=0; c=0; d=0;
  #100 a= 10; b=0; c=0; d=0;
  #100 a= 10; b=10; c=0; d=0;
  #100 a= 4; b=6; c=12; d=0;
  #100 a= 11; b=2; c=4; d=7;
  #100 a= 20; b=0; c=20; d=0;
  #100 a= 12; b=5; c=10; d=10;
  #100 a= 7; b=6; c=12; d=8;
  #100 a= 15; b=15; c=15; d=15;
 
end
 
initial
  $monitor("A=%b, B=%b, C=%b,D=%b,Sum= %b, Cout=%b",a,b,c,d,sum,cout);
endmodule
