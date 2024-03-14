`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD DSL Student
// Engineer: Gabriel Jabile
// 
// Create Date: 03/14/2024 06:50:17 PM
// Design Name: Demultiplexer
// Module Name: q3_1008656
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

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );
   

//YOUR CODE HERE  
assign W = (SEL == 2'b00) ? A : 2'b00;
assign X = (SEL == 2'b01) ? A : 2'b00;
assign Y = (SEL == 2'b10) ? A : 2'b00;
assign Z = (SEL == 2'b11) ? A : 2'b00;


endmodule

