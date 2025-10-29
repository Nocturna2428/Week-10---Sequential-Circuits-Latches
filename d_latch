// d_latch.v
module d_latch(
    input D,
    input E,
    output reg Q,
    output NotQ
);
    // Level-sensitive latch behavior:
    // While E == 1, capture D. When E == 0, hold last value.
    always @(D or E) begin
        if (E)
            Q <= D;    // non-blocking as recommended
        // else keep previous Q -> latch inferred
    end

    assign NotQ = ~Q;
endmodule
