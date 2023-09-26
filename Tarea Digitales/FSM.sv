module FSM (
  input M,
  input clk,
  input rst,
  output logic [7:0] msj_f
);

  logic [1:0] state, next_state;
  logic t0 = 0;
  logic [7:0] contador = 0;
  logic [7:0] mantenimientos = 0;
  logic [7:0] msj = 8'b11111111;

  // Instancias
  Registro_ciclos ciclos_inst (
    .data_input(contador), 
    .clk(clk),                   
    .reset(rst),                                
    .data_output(contador)             
  );
  
  Registro_mante mante_inst (
    .data_input(mantenimientos), 
    .clk(clk),                  
    .reset(rst),
    .enable(M),
    .data_output(mantenimientos)              
  );
  
   
	/*
  Registro_msj msj_inst (
    .data_input(msj), 
    .clk(clk),           
    .reset(rst),                           
    .data_output(msj)              
  );
  */

  comparador inst_comparador (
    .entrada(contador),
    .igual(t0)
  );
  Mux mux_inst (
        .A(mantenimientos),        
        .B(8'b11111111),       
        .S(t0),      
        .Y(msj)          
    );
 
  
  // Actual state logic
  always_ff @(posedge clk or posedge rst)
	if(rst) state = 2'b00;
	else
		state = next_state;

  // Next state logic
  always_comb
  begin
    case(state)
      2'b00: if (M) next_state = 2'b01; else next_state = 2'b10;
      2'b01: next_state = 2'b00;
      2'b10: if (t0) next_state = 2'b11; else next_state = 2'b00;
      2'b11: next_state = 2'b11;
      default: next_state = 2'b00;
    endcase
  end

  // Output logic

assign msj_f = msj;

endmodule