`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2020 01:28:49 AM
// Design Name: 
// Module Name: one_bit_full
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


module one_bit_full(
    input in1,
    input in2,
    input cin,
    output sum,
    output carry
    );
    
    wire w1,w2,w3;
    
    one_bit_half h1(in1, in2, w1, w2);
    one_bit_half h2(w1,cin,sum,w3);
    or G1(carry, w2, w3);
    
endmodule
