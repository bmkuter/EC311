`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 05:31:30 PM
// Design Name: 
// Module Name: Q_Five_test
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


module Q_Five_test(
    );
    
    reg en;
    reg [3:0]D;
    reg [1:0] S;
    wire F;
    
    Q_Five t1(D,S,en,F);
    
    initial
    begin
        S=0; D=4'b0000; en=0;
        
        #10; en=1;S=2'b00;D=4'b0001;
        #10; en=1;S=2'b01;D=4'b0010;
        #10; en=1;S=2'b10;D=4'b0100;
        #10; en=1;S=2'b11;D=4'b1000;
        
        #10 $finish;
        
    end
endmodule
