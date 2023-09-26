module comparador (
    input logic [7:0] entrada,
    output logic igual
);

 
assign igual = (entrada >= 8'b00000100); //3   
//assign igual = (entrada == 8'b11001000); //200
endmodule
