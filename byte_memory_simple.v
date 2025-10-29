module byte_memory_simple(
    input  [7:0] data,
    input        store,
    output reg [7:0] memory
);
    always @(data or store) begin
        if (store)
            memory <= data;
        // else hold previous -> latch inferred
    end
endmodule
