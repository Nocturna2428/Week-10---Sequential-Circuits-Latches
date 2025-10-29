module behavioral_sr_latch(
    input Set,
    input Reset,
    output reg Q,
    output NotQ
);
    always @(Set or Reset) begin
        if (Set)
            Q <= 1'b1;
        else if (Reset)
            Q <= 1'b0;
        // else keep previous (latch behavior)
    end
    assign NotQ = ~Q;
endmodule
