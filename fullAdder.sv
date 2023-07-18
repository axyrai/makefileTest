module fullAdder(a,b,c,sum,carry);
input logic [3:0] a,b;
input logic c;
output logic [3:0] sum;
output logic carry;
logic [4:0] temp;

always@(a or b or c)
begin
  temp <= a+b+c;
  sum=temp[3:0];
  carry=temp[4];

end 
endmodule:fullAdder
