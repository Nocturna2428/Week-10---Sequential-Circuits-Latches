
module memory_system(
    input  [7:0] data,
    input        store,
    input  [1:0] addr,
    output [7:0] memory
);
    // Demux data into four 8-bit buses
    wire [7:0] data0, data1, data2, data3;
    demux_4x8 data_demux (
        .in(data),
        .sel(addr),
        .out0(data0),
        .out1(data1),
        .out2(data2),
        .out3(data3)
    );

    // Demux store into four enables
    wire store0, store1, store2, store3;
    demux_4x1 store_demux (
        .in(store),
        .sel(addr),
        .out0(store0),
        .out1(store1),
        .out2(store2),
        .out3(store3)
    );

    // Four byte memories
    wire [7:0] mem0, mem1, mem2, mem3;
    byte_memory byte0 (.data(data0), .store(store0), .memory(mem0));
    byte_memory byte1 (.data(data1), .store(store1), .memory(mem1));
    byte_memory byte2 (.data(data2), .store(store2), .memory(mem2));
    byte_memory byte3 (.data(data3), .store(store3), .memory(mem3));

    // Multiplex outputs into single memory output
    mux_4x8 out_mux (
        .in0(mem0),
        .in1(mem1),
        .in2(mem2),
        .in3(mem3),
        .sel(addr),
        .out(memory)
    );
endmodule
