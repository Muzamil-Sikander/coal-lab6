module maion_decoder(op,RegWrite,Branch,Memwrite,Alusrc ,Resultsrc ,Aluop , Immsrc);
input op[6:0];
output RegWrite;
output Immsrc[1:0];
output Alusrc;
output Resultsrc;
output Branch;
output Aluop[1:0];
output Memwrite;







assign RegWrite = ((op == 7'b0110011 || op == 7'b'0000011) ? 1' b1 :1'b0) ;
assign Memwrite = (op == 70100011 ? 1' b1 : 1' b0);
assign Branch = (op == 7'1100011 ? 1' b1 : 1' b0);
assign Aluop = (op == 7'0000011 || op == 7'0110011) ? 2'b 00:
                (op == 7'0110011  )? 2'b10: (op == 7'1100011 )? 2'b01;
                
assign Resultsrc = (op == 7'00000011 ? 1' b1 : 1' b0);
assign Immsrc =(op == 7'0000011 || op == 7'0110011 )? 2'b00:
            (op == 7'0100011 )? 2'b01: (op == 7'01100011)? 2'b10;





endmodule
