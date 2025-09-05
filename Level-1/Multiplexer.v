//2:1 Multiplexer (Behavioral)
module mux2to1(input d0, d1, sel, output reg y);
    always @ (d0 or d1 or sel) begin
        if (sel == 0)
            y = d0;
        else
            y = d1;
    end
endmodule

//4:1 Multiplexer (Behavioral)
module mux4to1(input d0, d1, d2, d3, input [1:0] sel, output reg y);
    always @ (d0 or d1 or d2 or d3 or sel) begin
        case (sel)
            2'b00: y = d0;
            2'b01: y = d1;
            2'b10: y = d2;
            2'b11: y = d3;
            default: y = 1'bx; // undefined
        endcase
    end
endmodule

//8:1 Multiplexer (Behavioral)
module mux8to1(
    input d0, d1, d2, d3, d4, d5, d6, d7,
    input [2:0] sel,
    output reg y
);
    always @ (d0 or d1 or d2 or d3 or d4 or d5 or d6 or d7 or sel) begin
        case (sel)
            3'b000: y = d0;
            3'b001: y = d1;
            3'b010: y = d2;
            3'b011: y = d3;
            3'b100: y = d4;
            3'b101: y = d5;
            3'b110: y = d6;
            3'b111: y = d7;
            default: y = 1'bx; // undefined
        endcase
    end
endmodule
