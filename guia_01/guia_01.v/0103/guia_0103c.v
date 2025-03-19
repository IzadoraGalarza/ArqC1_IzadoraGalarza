/*
Guia_0103a - Arquitetura de computadores
Autor: Izadora Galarza Alves
*/

module guia_0103c;

integer x=76;
reg[7:0] b=0;

initial
begin:main

$display("Guia_0103 - C");
$display("x=%d",x);
$display("b= %8b",b);
b=x;
$display("b= %8(2) / %o (8) / %X(16)",b,b,b);
end
endmodule