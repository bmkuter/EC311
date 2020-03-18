`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2020 05:42:37 PM
// Design Name: 
// Module Name: one_bit_full_adder_testbench
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


module one_bit_full_adder_testbench(
    );
    
    reg A,B,Cin;
    wire S, Cout;
    
    //one_bit_full_adder f0(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

    one_bit_full_adder f0(A,B,Cin,S,Cout);
    
    initial
    begin
        A = 0; B = 0; Cin = 0;
        #10; A = 1;
        #20; B = 1;
        #30; Cin = 1;
        
        #50 $finish;
    end
endmodule
