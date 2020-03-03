`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2020 01:20:40 AM
// Design Name: 
// Module Name: 1_bit_half
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


module one_bit_half(
    input in1,
    input in2,
    output sum,
    output carry
    );
    
    xor G1(sum,in1,in2);
    and G2(carry, in1, in2);
    
endmodule
