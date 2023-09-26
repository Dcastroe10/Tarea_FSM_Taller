module FSM_tb;

 
  reg M;
  reg clk;
  reg rst;
  wire [7:0] msj_f;

  // Instanciar el módulo FSM
  FSM uut (
    .M(M),
    .clk(clk),
    .rst(rst),
    .msj_f(msj_f)
  );
/*
  always begin
    #100 clk = ~clk;
  end
 */
  // Inicialización
  initial begin
    // Inicializar señales
    M = 0;
    clk = 0;
    rst = 1;
    #10;
	 rst = 0;	 
    #10;
	 
	 
	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	
	
	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	
	
	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	
	
	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	
	
	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	
	
	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	
	rst = 1;
    #10;
	 rst = 0;	 
    #10;
	 
	 	M = 1;
	#20;
	clk = 1;
	#100;
	M = 0;
	#20;
	clk=0;
	#100;
	

 
  end

endmodule
