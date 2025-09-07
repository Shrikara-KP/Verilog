//Encoder 4 to 2
module encoder4to2(input [3:0] in, output reg [1:0] out);
    always @ (in) begin
        case (in)
            4'b0001: out = 2'b00;
            4'b0010: out = 2'b01;
            4'b0100: out = 2'b10;
            4'b1000: out = 2'b11;
            default: out = 2'bxx; // invalid if multiple inputs are high
        endcase
    end
endmodule

//Encoder 8 to 3
module encoder8to3(input [7:0] in, output reg [2:0] out);
    always @ (in) begin
        case (in)
            8'b00000001: out = 3'b000;
            8'b00000010: out = 3'b001;
            8'b00000100: out = 3'b010;
            8'b00001000: out = 3'b011;
            8'b00010000: out = 3'b100;
            8'b00100000: out = 3'b101;
            8'b01000000: out = 3'b110;
            8'b10000000: out = 3'b111;
            default: out = 3'bxxx; // invalid if multiple inputs active
        endcase
    end
endmodule
