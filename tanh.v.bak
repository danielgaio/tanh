// --------------------------------------------------------------------------------------------
// Nome do modulo: tanh
// Entradas: x = 
// Saidas: y = 
// Descriçao:
// Formato de representaçao: Q4.12
// --------------------------------------------------------------------------------------------

module tanh(x, y);
	input signed [15:0]x;
	output reg signed [15:0]y;
	
	
	always @ (x) begin
		case (x)
		
			//.....
			
			default : begin
				if (x[15] == 1) 	y <= 16'b0000_000000000000;
				else 					y <= 16'b0001_000000000000;
			end
			
		endcase
	end
		

endmodule
