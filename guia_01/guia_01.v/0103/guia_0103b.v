/*
Guia_0103a - Arquitetura de computadores
Autor: Izadora Galarza Alves
*/

module Guia_0103b;

integer x= 67;
reg[7:0] b=0;

initial 
begin:main
$display("Guia_0103 - B");
$display("x=%d",x);
$display("b=%8b",b);
b=x;
$display("b= %B(2) / %o (8) / %X(16)",b,b,b,b);
end
endmodule