`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 03:38:50 PM
// Design Name: 
// Module Name: four_bit_adder_testbench
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


module four_bit_adder_testbench(
//        input c0,a0,a1,a2,a3,b0,b1,b2,b3,
//        output s0,s1,s2,s3, carry
    );
    
    reg c0,a0,a1,a2,a3,b0,b1,b2,b3; //Inputs
    wire s0,s1,s2,s3, carry; //Outputs
    
    initial
    begin
        c0 = 0;
        a0 = 0;
        b0 = 0;
        a1 = 0;
        b1 = 0;
        a2 = 0;
        b2 = 0;
        a3 = 0;
        b3 = 0;      
        
        #10 c0=1;
    
        #20 b0=1; b1=1 ;b2=1 ;b3 = 1;
        
        #40 a0=1;a1=1;a2=1;a3=1;
    
        #100 $finish;  
    end
    
//    always begin
//        #5 {a0,b0,a1,b1,a2,b2,a3,b3} = {a0,b0,a1,b1,a2,b2,a3,b3} + 1'b1;
    

    
//    end
endmodule
