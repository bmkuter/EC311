`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 04:02:31 PM
// Design Name: 
// Module Name: one_bit_half_testbench
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


module one_bit_half_testbench(
    );
    
    reg a0, b0;
    wire s0, c1;
    
    one_bit_half h1(.a0(in1),.b0(in2),.s0(sum),.c1(carry));
    
    initial
    begin
        a0 = 0;
        b0 = 0;
    
        #20 a0 = 1;
        
        #40 b0 = 1;
    
        #100 $finish;
    
    end
    
endmodule
