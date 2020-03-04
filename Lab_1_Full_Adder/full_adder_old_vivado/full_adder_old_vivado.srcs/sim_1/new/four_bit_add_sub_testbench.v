`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 06:51:27 PM
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
    wire [3:0]s;
    wire carry,v;
    
    four_bit_adder_subtractor fs0(m,a,b,s,carry,v);

    
    initial
    begin
        a = 0; b = 0; m=0;
        #10;  a = 4'b0010; b = 4'b0100;
        

    
        #100 $finish;  
    end
    
    
    
endmodule
