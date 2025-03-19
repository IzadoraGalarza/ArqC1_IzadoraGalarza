// -------------------------
// Guia_0503.v 
// Nome: Izadora Galarza Alves
// Matricula: 866053
// -------------------------
//~( a | ~b);
// -------------------------

module f7a (output s, 
    input a, 
    input b);
    wire not_b, temp;

    nor NOR1(not_b, b, b);  
    nor NOR2(temp, a, not_b);
    nor NOR3(s, temp, temp); 

endmodule

module f7b (output s, 
    input a,
    input b);
    assign s = ~ ( a | ~b);
endmodule 

module guia0503;
    reg x;
    reg y;
    wire a, b;

    f7a moduloA (a, x, y);
    f7b moduloB (b, x, y);

    initial begin : main
        $display("Guia_0503 - Izadora Galarza Alves - 866053");
        $display("guia0503");
        $display(" x  y  a  b ");
        $monitor(" %b  %b  %b  %b", x, y, a, b);

        x = 1'b0; y = 1'b0;
        #1 x = 1'b0; y = 1'b1;
        #1 x = 1'b1; y = 1'b0;
        #1 x = 1'b1; y = 1'b1; 
    end
endmodule





