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
    input m,[3:0]a,[3:0]b,    
    output [3:0]s,
    output carry,v
    );
    
    wire mb0w,mb1w,mb2w,mb3w,mb4w,c0,c1,c2,c3,c4;
        
    xor mb0(mb0w,m,b[0]);
    xor mb1(mb1w,m,b[1]);
    xor mb2(mb2w,m,b[2]);
    xor mb3(mb3w,m,b[3]);
    
    one_bit_full f0(a[0],mb0w,m,s[0],c1);
    one_bit_full f1(a[1],mb1w,c1,s[1],c2);
    one_bit_full f2(a[2],mb2w,c2,s[2],c3);
    one_bit_full f3(a[3],mb3w,c3,s[3],carry);  
    
    xor cmp(v,c3,carry);
    
endmodule
