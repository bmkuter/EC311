`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2020 06:37:46 PM
// Design Name: 
// Module Name: four_bit_add_sub_testbench
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


module four_bit_add_sub_testbench(

    );
    
    reg m;
    reg [3:0] a, b;    
    wire [4:0]s;
    //wire Cout;
    
    four_bit_add_sub fs0(a,b,m,s);

    
    initial
    begin
       
        a = 0; b = 0; m=0;
        #10;  a = 4'b0100; b = 4'b0011;
        #20;  a = 4'b0101; b = 4'b0110;
        #30;  a = 4'b0101; b = 4'b1000; m=1;
        #40;  a = 4'b0100; b = 4'b1011; m=0;
        #50;  a = 4'b0011; b = 4'b1111; m=1;
        #60;  a = 4'b1001; b = 4'b1010; m=0;
        #70;  a = 4'b1111; b = 4'b1110; m=0;
        #80;  a = 4'b1111; b = 4'b1011; m=1;
    
        #90 $finish;  
    end
    
    
    
endmodule
