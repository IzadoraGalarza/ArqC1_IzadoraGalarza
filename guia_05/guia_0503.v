// -------------------------
// guia_0503.v 
// Nome: Izadora Galarza Alves
// Matricula: 866053
// -------------------------
// -------------------------

module f5a (output s,
input a, 
input b);

wire not_b;

nor NOR1 (not_b, b,b); // SAIDA, ENTRADA 1 , ENTRADA 2
nor NOR2 (s, not_b, a); // SAIDA, ENTRADA 1 , ENTRADA 2
endmodule 

module f5b (output s,
input a,
input b);

assign s = ~(a | ~b );
endmodule

module guia_0503;
reg x, y;
wire a, b;
f5a moduleA(a, x, y);
f5b moduleB(b, x, y);

initial 
begin: main
$display("Guia_0503 - Izadora Galarza Alves - 866053");
$display(" x  y  a  b");
$monitor("%4b %4b %4b %4b", x,y,a,b);

x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;

end 
endmodule



