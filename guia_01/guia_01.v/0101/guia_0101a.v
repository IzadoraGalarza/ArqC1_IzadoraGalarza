//Guia_0101.v
//8660553 - Izadora Galarza Alves


module guia_0101;
// definir data
integer x = 27; //decimal
reg [7:0] b = 0; //binary (bits - little endian - ou seja, do maior ate o menor)

//actions
initial
begin : main 
$display ("Guia_0101 - Tests");
$display ("x = %d", x);
$display ("b = %8b", b);
b=x;
$display("b = %8b", b);
end //main

endmodule // Guia_0101