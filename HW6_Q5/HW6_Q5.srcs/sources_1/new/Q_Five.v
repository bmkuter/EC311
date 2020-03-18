`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 12:49:33 PM
// Design Name: 
// Module Name: Q_Five
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


module Q_Five(
    input [4:0]D,
    input [1:0]S,
    input en,
    output reg F
    );
    always @(D[4:0],S[1:0], en, F)
    begin
        F = (en==0) ? 0 : (en == 1 & S[1] ==0 & S[0]==0) ? D[0] : 
        (en == 1 & S[1] ==0 & S[0]==1) ? D[1] : 
        (en == 1 & S[1] == 1 & S[0]==0) ? D[2] :D[3];
    end 
    
endmodule
