module encorder
(
	input wire in1,
	input wire in2,
	input wire in3,
	
	output reg [7:0] out
);



/* always@(*)
	if      ({{in1},{in2},{in3}}==3'b000)
	out = 8'd0;
	else if ({{in1},{in2},{in3}}==3'b001)
	out = 8'd1;
	else if ({{in1},{in2},{in3}}==3'b010)
	out = 8'd2;
	else if ({{in1},{in2},{in3}}==3'b011)
	out = 8'd3;
	else if ({{in1},{in2},{in3}}==3'b100)
	out = 8'd4;
	else if ({{in1},{in2},{in3}}==3'b101)
	out = 8'd5;
	else if ({{in1},{in2},{in3}}==3'b110)
	out = 8'd6;
	else
	out = 8'd7; */
	always@(*)
	case({{in1},{in2},{in3}})
	
		 3'b000:out = 8'b00000001;
		 3'b001:out = 8'b00000010;
		 3'b010:out = 8'b00000100;
		 3'b011:out = 8'b00001000;
		 3'b100:out = 8'b00010000;
		 3'b101:out = 8'b00100000;
		 3'b110:out = 8'b01000000;
		 3'b111:out = 8'b10000000;
		default :out = 8'b00000000;
	endcase
endmodule