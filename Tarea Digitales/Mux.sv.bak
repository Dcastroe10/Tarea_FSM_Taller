module Mux (
  input wire [3:0] data_inputs, // Entradas de datos (4 bits)
  input wire [1:0] select,     // Entradas de selección (2 bits)
  output wire mux_output       // Salida del multiplexor
);

  // Lógica del multiplexor
  assign mux_output = (select == 2'b00) ? data_inputs[0] :
                     (select == 2'b01) ? data_inputs[1] :
                     (select == 2'b10) ? data_inputs[2] :
                                       data_inputs[3];

endmodule
