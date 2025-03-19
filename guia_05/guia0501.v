// -------------------------
// Guia_0501.v 
// Nome: Izadora Galarza Alves
// Matricula: 866053
// -------------------------
// -------------------------
// f6_gate -> (a & b')
// m a b ~b s
// 0 0 0  1 0
// 1 0 1  0 0 
// 2 1 0  1 1 
// 3 1 1  0 0
//
// -------------------------

module f6a (output s,
input a,
input b);
// definir dado local
wire not_b, a_and_notb;
//descricao por porta
nor NOR1 (not_b,b); //usar nor para NOT b
nor NOR2 (a_and_notb, a, not_b);  //usando nor para a AND ~b -> (a NOR ( not_b NOR not_b))
nor NOR3(s, a_and_notb, a_and_notb);
endmodule

module f6b ( output s,
input a,
input b);
//descrever expressão
assign s = a & ~b;
endmodule //f6b

module guia0501;
reg x;
reg y;
wire a,b;
f6a moduleA (a, x, y);
f6b moduleB (b, x, y);

initial 
begin: main
$display("Guia_0501 - Izadora Galarza Alves - 866053");
$display("0501");
$display(" x    y    a     b");
$monitor("%4b %4b %4b %4b", x, y, a, b);
x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule 


