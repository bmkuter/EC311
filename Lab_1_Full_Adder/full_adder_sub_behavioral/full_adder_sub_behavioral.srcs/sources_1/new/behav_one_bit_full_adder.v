`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2020 05:35:55 PM
// Design Name: 
// Module Name: one_bit_full_adder
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


module one_bit_full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    reg S, Cout;
    reg w1, w2, w3;
    
    always @(A,B,Cin)
    begin
        w1 = A ^ B;
        w3 = A & B;
        w2 = w1 & Cin;
        S = w1 ^ Cin;
        Cout = w2 | w3;      
    end
endmodule
