`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2020 06:00:23 PM
// Design Name: 
// Module Name: four_bit_add_sub
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


module four_bit_add_sub(
    input [3:0] A,
    input [3:0] B,
    input M,
    output reg [4:0]S
    //output Cout
    );
    
    //Declaring Internal Wires
    reg BM0, BM1, BM2, BM3, C0,C1,C2;
       
    always @(A[3:0],B[3:0],M)
    begin
        //XOR chain for add/sub command.
        BM0 = B[0] ^ M;
        BM1 = B[1] ^ M;        
        BM2 = B[2] ^ M;
        BM3 = B[3] ^ M;           
                
        //Setting Carries
        C0 = (A[0] & BM0)|((A[0] ^ BM0)& M);
        C1 = (A[1] & BM1)|((A[1] ^ BM1)& C0);
        C2 = (A[2] & BM2)|((A[2] ^ BM2)& C1);
        
        //Setting Sums
        S[0] = M ^ (A[0] ^ BM0);
        S[1] = C0 ^ (A[1] ^ BM1);
        S[2] = C1 ^ (A[2] ^ BM2);
        S[3] = C2 ^ (A[3] ^ BM3);
        //S[4] = (A[3] & BM3)|((A[3] ^ BM3)& C2);
        S[4] = (B[3] == 1 & M == 0) ? 1 : (M == 1) ? (0):(A[3] & BM3)|((A[3] ^ BM3)& C2);
        
    end
endmodule
