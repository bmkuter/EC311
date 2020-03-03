`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 03:25:52 PM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input c0,    
    input a0,
    input b0,
    input a1,
    input b1,
    input a2,
    input b2,
    input a3,
    input b3,
    output s0,
    output s1,
    output s2,
    output s3,
    output carry
    );
    
    wire c1,c2,c3;
    
    one_bit_full f0(a0,b0,c0,s0,c1);
    one_bit_full f1(a1,b1,c1,s1,c2);
    one_bit_full f2(a2,b2,c2,s2,c3);
    one_bit_full f3(a3,b3,c3,s3,carry);  
    
endmodule
