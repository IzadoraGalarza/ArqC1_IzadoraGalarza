/* Guia_0102 - Arquitetura de computadores
 Autor: Izadora Galarza Alves */



module guia_0102a;
integer x= 0;
reg[7:0] b= 8'b00010011;

initial

begin: main

$display("Guia0102 - A");
$display("x=%d",x);
$display("b=%8b",b);
x=b;
$display("b=%d",x);

end
endmodule