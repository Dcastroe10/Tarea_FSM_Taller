module Registro_mante (
  input logic [7:0] data_input, // Entrada de datos de 8 bits
  input logic clk,              // Señal de reloj
  input logic reset,            // Señal de reinicio asincrónico
  input logic enable,
  output logic [7:0] data_output // Salida del registro de 8 bits
);

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      data_output <= 8'b0; // Resetea el registro a 0 cuando reset es 1
    end else if (enable) begin
      data_output <= data_input + 1; // Carga el valor de data_input en el registro en el flanco de subida del reloj si enable es 1
		//$display("El mantenimiento es: ");
		//$display(data_output);
	 end
  end

endmodule
