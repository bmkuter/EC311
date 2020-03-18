`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 06:40:30 PM
// Design Name: 
// Module Name: Q_Six_test
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


module Q_Six_test(
    );
    reg [7:0]D;
    wire [2:0]S;
    
    Q_Six t1(D,S);
    
    initial
    begin
             D=8'b00000000;
        

        #10; D=8'b00000001;
        #10; D=8'b00000010;
        #10; D=8'b00000100;
        #10; D=8'b00001000;
        #10; D=8'b00010000;
        #10; D=8'b00100000;
        #10; D=8'b01000000;
        #10; D=8'b10000000;
        #10 $finish;
        
    end
endmodule
