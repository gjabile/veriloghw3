`timescale 1ns / 1ps

module demultiplexer_tb;
    wire [1:0] W;
    wire [1:0] X;
    wire [1:0] Y;
    wire [1:0] Z;
    reg [1:0] A;
    reg [1:0] SEL;

demultiplexer i1(W, X, Y, Z, A, SEL);


initial
    begin
        A=2'b00; SEL=2'b00;
        // Test case 1: SEL = 00
        #10 A=2'b10; SEL=2'b00;
        // Test case 2: SEL = 01
        #10 A=2'b01; SEL=2'b01;
        // Test case 3: SEL = 10
        #10 A = 2'b11; SEL = 2'b10;
        // Test case 4: SEL = 11
        #10 A = 2'b11;  SEL = 2'b11;
        
        #10 $finish;
    end 
    
       

  
endmodule
