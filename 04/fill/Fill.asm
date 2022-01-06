// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@24576  
D=M     
@0
D;JEQ   

@8192  
D=A    
@10    
M=D

@16384
D=A
A=D
D=D+1  
M=-1   

@10    
M=M-1  
M;JNE  

@24576 
D=M   
@16    
D;JNE  

@8192  
D=A
@26
M=D

@16384 
D=A
A=D
D=D+1
M=0 

@26
M=M-1
M;JNE

@0
0;JMP