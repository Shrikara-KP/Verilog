//Gate Level Modeling
module half_subtractor_gate(input a, b, output diff, borrow);
    xor(diff, a, b);       // Difference = A XOR B
    and(borrow, ~a, b);    // Borrow = NOT A AND B
endmodule

//Dataflow Modeling
module half_subtractor_dataflow(input a, b, output diff, borrow);
    assign diff   = a ^ b;
    assign borrow = (~a) & b;
endmodule

//behavioral Modeling
module half_subtractor_behavioral(input a, b, output reg diff, borrow);
    always @ (a or b) begin
        diff   = a ^ b;
        borrow = (~a) & b;
    end
endmodule
