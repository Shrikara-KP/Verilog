//Gate Level Modeling
module full_subtractor_gate(input a, b, bin, output diff, borrow);
    wire d1, b1, b2;

    xor(d1, a, b);
    xor(diff, d1, bin);

    and(b1, ~a, b);
    and(b2, ~d1, bin);
    or(borrow, b1, b2);
endmodule

//Dataflow Modeling
module full_subtractor_dataflow(input a, b, bin, output diff, borrow);
    assign diff   = a ^ b ^ bin;
    assign borrow = (~a & b) | (~(a ^ b) & bin);
endmodule

//behavioral Modeling
module full_subtractor_behavioral(input a, b, bin, output reg diff, borrow);
    always @ (a or b or bin) begin
        diff   = a ^ b ^ bin;
        borrow = (~a & b) | (~(a ^ b) & bin);
    end
endmodule
