// byte_memory.v
`timescale 1ns/1ps
module byte_memory(
    input  [7:0] data,
    input        store,    // enable / store: while high, capture data
    output [7:0] memory
);

    // Internal regs/drivers for each bit (instantiated d_latch outputs)
    genvar i;
    wire [7:0] q_bits;
    wire [7:0] nq_bits;

    generate
        for (i = 0; i < 8; i = i + 1) begin : gen_d_latches
            d_latch bit_latch(
                .D(data[i]),
                .E(store),
                .Q(q_bits[i]),
                .NotQ(nq_bits[i])
            );
        end
    endgenerate

    assign memory = q_bits;

endmodule
