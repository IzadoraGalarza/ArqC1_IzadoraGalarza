//Guia_0101b.v
//8660553 - Izadora Galarza Alves

module Guia_0101b;

integer x = 51;
reg [7:0] b=0;

initial 
begin: main
$display ("GUIA_0101 - B");
$display ("x= %d", x);
$display("b= %8b", b);
b=x;
$display("b = %8b",b);
end

endmodule