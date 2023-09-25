module Deco (
  input [2:0] input_bits,   // Entrada de 3 bits
  output [7:0] output_lines // Salida de 8 líneas
);

  // Declaración de cableado interno
  wire [7:0] decoder_output;

  // Lógica del decodificador
  assign decoder_output[0] = (input_bits == 3'b000) ? 1'b1 : 1'b0;
  assign decoder_output[1] = (input_bits == 3'b001) ? 1'b1 : 1'b0;
  assign decoder_output[2] = (input_bits == 3'b010) ? 1'b1 : 1'b0;
  assign decoder_output[3] = (input_bits == 3'b011) ? 1'b1 : 1'b0;
  assign decoder_output[4] = (input_bits == 3'b100) ? 1'b1 : 1'b0;
  assign decoder_output[5] = (input_bits == 3'b101) ? 1'b1 : 1'b0;
  assign decoder_output[6] = (input_bits == 3'b110) ? 1'b1 : 1'b0;
  assign decoder_output[7] = (input_bits == 3'b111) ? 1'b1 : 1'b0;

  // Asignar las salidas del decodificador a las salidas del módulo
  assign output_lines = decoder_output;

endmodule
