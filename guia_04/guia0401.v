/* 
Aluna: Izadora Galarza Alves 
Professor: Theldo Cruz
Guia04
*/




module fxyz (output s, input x, y, z);
    assign s = ~x & ~(y | ~z);
endmodule

module test_module;
    reg x, y, z;
    wire s1, s2, s3;

    fxyz FXY1 (s1, x, y, z);
    fxyz SOP1 (s2, x, y, z);
    fxyz POS1 (s3, x, y, z);

    initial begin
        x = 1'bx; 
        y = 1'bx; 
        z = 1'bx;
    end

    initial begin
        $display("Questao 1A");
        $display("\nx' . (y + z')' = s\n");
        $display("x y z = s1 s2 s3");

        $monitor("%2b %2b %2b = %2b %2b %2b", x, y, z, s1, s2, s3);

        #1 x = 0; y = 0; z = 0;
        #1 x = 0; y = 0; z = 1;
        #1 x = 0; y = 1; z = 0;
        #1 x = 0; y = 1; z = 1;
        #1 x = 1; y = 0; z = 0;
        #1 x = 1; y = 0; z = 1;
        #1 x = 1; y = 1; z = 0;
        #1 x = 1; y = 1; z = 1;
    end
endmodule

