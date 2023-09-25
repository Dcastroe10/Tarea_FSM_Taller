module FSM_tb;

  // Declaración de señales de prueba
  reg M, clk, rst;
  wire a, b;

  // Instanciar el módulo FSM
  FSM fsm_inst (
    .M(M),
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b)
  );

  // Generar señales de reloj
  always begin
    #5 clk = ~clk; // Generar un ciclo de reloj cada 5 unidades de tiempo
  end

  // Inicialización
  initial begin
    // Inicializar señales
	 rst = 0;
    M = 0;
    clk = 0;

    // Esperar un poco antes de aplicar el reinicio
    #40 rst = 1;

    // Ciclo de prueba
    #20 M = 1; // Cambiar la entrada M
    #20 M = 0;

    // Desactivar el reinicio
    rst = 0;

    // Simular por un tiempo adicional
    #100;

    
  end

  // Visualización de resultados
  initial begin
    $display("Tiempo: %t, Salida a: %b, Salida b: %b", $time, a, b);
  end

endmodule
