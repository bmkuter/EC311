`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 06:30:32 PM
// Design Name: 
// Module Name: Q_Six
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Q_Six(
    input [7:0] D,
    output reg [2:0] S
    );
    
    always @(D[7:0], S[2:0])
    begin
        S = (D == 8'b00000001) ? 3'b000 : //0
            (D == 8'b00000010) ? 3'b001 : //1
            (D == 8'b00000100) ? 3'b010 : //2  
            (D == 8'b00001000) ? 3'b011 : //3
            (D == 8'b00010000) ? 3'b100 : //4
            (D == 8'b00100000) ? 3'b101 : //5
            (D == 8'b01000000) ? 3'b110 : //6  
            (D == 8'b10000000) ? 3'b111 : //7 
            0;
    
    end    
endmodule
