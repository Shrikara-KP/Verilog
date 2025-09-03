//Gate-Level Modeling
module half_adder_gate(input a, b, output sum, carry);
    xor(sum, a, b);   // sum = a ⊕ b
    and(carry, a, b); // carry = a · b
endmodule

//Data flow Modeling
module half_adder_dataflow(input a, b, output sum, carry);
    assign sum   = a ^ b; // XOR
    assign carry = a & b; // AND
endmodule

//Behavioral Modeling
module half_adder_behavioral(input a, b, output reg sum, carry);
    always @ (a or b) begin
        sum   = a ^ b;
        carry = a & b;
    end
endmodule
