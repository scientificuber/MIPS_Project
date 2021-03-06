module aluControlUnit(aluOp, f6, out4);
    input [1:0] aluOp;
    input [5:0] f6;
    output reg [3:0] out4;
    always @ (*)
        begin
            case(aluOp)
                2'b00 : out4=4'b0010;
                2'b10 : case(f6)
                            6'b100000 : out4 = 4'b0010;
                            6'b100010 : out4 = 4'b0011;
                            6'b011000 : out4 = 4'b0100;
                        endcase
            endcase
        end
endmodule
