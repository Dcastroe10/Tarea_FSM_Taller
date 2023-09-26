module comparador (
    input logic [7:0] entrada,
    output logic igual
);

 
//assign igual = (entrada >= 8'b00000100); //3   Este es para pruebas
assign igual = (entrada == 8'b11001000); //200
endmodule
