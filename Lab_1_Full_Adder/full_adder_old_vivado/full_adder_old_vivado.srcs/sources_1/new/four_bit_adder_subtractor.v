`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 04:43:40 PM
// Design Name: 
// Module Name: four_bit_adder_subtractor
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


module four_bit_adder_subtractor(
    input m,    
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
    output c,
    output v
    );
    
    wire mb0w,mb1w,mb2w,mb3w,mb4w,c0,c1,c2,c4;
    
    xor mb0(mb0w,m,b0);
    xor mb1(mb1w,m,b1);
    xor mb2(mb2w,m,b2);
    xor mb3(mb3w,m,b3);
    
    four_bit_adder fourFull0(m,a0,mb0w,a1,mb1w,a2,mb2w,a3,mb3w,s0,s1,s2,s3,c4);
    
    wire c3 = fourFull0.f2.carry;
    
    buf buff1(c,c4);
    xor cmp(v,c3, c4);
    
endmodule
