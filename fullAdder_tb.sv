module fullAdder_tb();

logic [3:0] a, b, sum;
logic carry,c;
logic [4:0] temp;

fullAdder fa1(a,b,c,sum,carry);

initial begin
  #10 a=4'b1011; b=4'b1101; c=0;
  #10 a=4'b1101; b=4'b0010; c=1;
  #100;
end 
endmodule:fullAdder_tb

