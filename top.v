
module top(
    input  [15:0] sw,
    input         btnC,
    output [15:0] led
);
    // Part 1: single-bit D-Latch
    // Connect sw[0] -> D, btnC -> E, led[0] = Q, led[1] = NotQ
    d_latch d1 (
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    // Part 2: 4-byte memory
    // sw[15:8] is data (8 bits), sw[7:6] is addr (2 bits), btnC is store
    // connect memory output to led[15:8]
    wire [7:0] memory_out;
    memory_system memsys (
        .data(sw[15:8]),
        .store(btnC),
        .addr(sw[7:6]),
        .memory(memory_out)
    );

    // Map memory output to led[15:8]
    assign led[15:8] = memory_out;

    // Unused leds (2..7) drive to 0 for clarity
    assign led[7:2] = 6'b0;

endmodule
