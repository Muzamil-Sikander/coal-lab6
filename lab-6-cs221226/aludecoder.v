
module alu_decoder(funct3,funct7,aluop,op5, alucontrol);

input = op[6:8];
input = funct3[2:0];
input = funct7[6:0];
input = aluop[1:0];
output = alucontrol[2:0];
 
wire cmt[1:0];

cmt={op[5] ,funct7[7]};



assign alucontrol = (aluop = 2'b00) ? 3'b000 :
      (aluop = 2'b01 )? 3'b001 :
      (aluop = 2'b10 && funct3 == 3b'010 )? 3b'101 :
      (aluop = 2'b10 && funct3 == 3b'110)? 3b'011 :
      (aluop = 2'b10 && funct3 == 3b111) ? 3b'010:
      (aluop = 2'10 && func3 == 000 && cmt != b11 )? 3'b000: 
      (aluop = 2'10 && func3 == 000 && cmt = b11 )? : 3'b001 :
       3b'000;




















endmodule
