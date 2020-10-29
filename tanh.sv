// --------------------------------------------------------------------------------------------
// Nome do modulo: tanh
// Entradas: x = 
// Saidas: y = 
// Descriçao:
// Formato de representaçao: Q4.12
// --------------------------------------------------------------------------------------------

`timescale 1ns/1ps

module tanh(x, y);
	input wire signed [15:0] x;
	output reg signed [31:0] y;
	


	// variables for the sigmoid module
	reg [15:0] x_sigmoid;
	reg [15:0] y_sigmoid;
	// declare sigmoid module
	sigmoid sigmoid_module(
		.x(x_sigmoid),
		.y(y_sigmoid)
	);




	







	// other variables
	logic [31:0] two_times_x;
	logic [31:0] two_times_sig;




	
	
	

	always @ (*) begin
	



		// multiplicacao 2*x
		two_times_x <= 16'b0010_000000000000 * x;
		#5
		//$display("two_times_x: %b", two_times_x);
		





		// sig(2*x)
		x_sigmoid = two_times_x[27:12];
		#20
		//$display("y_sigmoid: %b", y_sigmoid);
		
	



		


		// 2 * sig(2x)
		two_times_sig = 16'b0010_000000000000 * y_sigmoid;
		#5
		//$display("two_times_sig: %b", two_times_sig);
	





	
		// 2 * sig(2x) - 1
		y = two_times_sig - 32'b00000001_000000000000000000000000;
		//$display("y tanh: %b", y);
		
		
		
		
		
	
	end
	
endmodule