//Gate-Level Modeling
module full_adder_gate(input a, b, cin, output sum, carry);
    wire s1, c1, c2;

    xor(s1, a, b);
    xor(sum, s1, cin);

    and(c1, a, b);
    and(c2, s1, cin);
    or(carry, c1, c2);
endmodule

//Dataflow Modeling
module full_adder_dataflow(input a, b, cin, output sum, carry);
    assign sum   = a ^ b ^ cin;                // XOR chain
    assign carry = (a & b) | (b & cin) | (a & cin); // Majority function
endmodule

//Behavioral Modeling
module full_adder_behavioral(input a, b, cin, output reg sum, carry);
    always @ (a or b or cin) begin
        sum   = a ^ b ^ cin;
        carry = (a & b) | (b & cin) | (a & cin);
    end
endmodule
