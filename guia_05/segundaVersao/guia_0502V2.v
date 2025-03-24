// -------------------------
// Guia_0502.v 
// Nome: Izadora Galarza Alves
// Matricula: 866053
// -------------------------
// -------------------------
// f6_gate -> (a'| b )
// m a b  s
// 0 0 0  0
// 1 0 1  0 
// 2 1 0  1 
// 3 1 1  0
//
// -------------------------

module f6a ( output s,
input a,
input b);

 wire not_a;

    nand NAND1(not_a, a, a); // NOT a (a NAND a = ~a)
    nand NAND2(s, not_a, b); 
endmodule

module f6b ( output s,
input a,
input b);

assign s = ~a | b;

endmodule 
module guia0502;
// ------------------------- definir dados
reg x;
reg y;
wire a, b;
f6a moduloA ( a, x, y );
f6b moduloB ( b, x, y );
// ------------------------- parte principal
initial
begin : main
$display("Guia_0500 - Izadora Galarza Alves - 866053");
$display("Test module");
$display(" x y a b");
$monitor("%4b %4b %4b %4b", x, y, a, b);
x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule 
