//Gate level Modeling

module gates_gatelevel(input a, b,
                       output and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);

    and  g1(and_out, a, b);   // AND gate
    or   g2(or_out, a, b);    // OR gate
    not  g3(not_out, a);      // NOT gate
    nand g4(nand_out, a, b);  // NAND gate
    nor  g5(nor_out, a, b);   // NOR gate
    xor  g6(xor_out, a, b);   // XOR gate
    xnor g7(xnor_out, a, b);  // XNOR gate

endmodule

//Dataflow Modeling
module logic_gates( input a, b,
    output and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);

    assign and_out  = a & b;    // AND gate
    assign or_out   = a | b;    // OR gate
    assign not_out  = ~a;       // NOT gate 
    assign nand_out = ~(a & b); // NAND gate
    assign nor_out  = ~(a | b); // NOR gate
    assign xor_out  = a ^ b;    // XOR gate
    assign xnor_out = ~(a ^ b); // XNOR gate

endmodule

//Behavioral Modeling

module gates_behavioral(input a, b,
                        output reg and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);

    always @ (a or b) begin
        and_out  = a & b;
        or_out   = a | b;
        not_out  = ~a;
        nand_out = ~(a & b);
        nor_out  = ~(a | b);
        xor_out  = a ^ b;
        xnor_out = ~(a ^ b);
    end

endmodule
