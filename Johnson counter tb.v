`timescale 1ns/1ps

module johnson_counter_tb;

    reg clk;
    reg rst;

    wire [3:0] q;

    // Instantiate Johnson Counter
    johnson_counter uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initialize signals
        clk = 0;
        rst = 1;

        // Apply reset
        #10;
        rst = 0;

        // Run the counter
        #80;

        $finish;

    end

    // Display output
    initial begin

        $monitor(
            "Time=%0t | Reset=%b | Counter=%b",
            $time, rst, q
        );

    end

    // Generate waveform
    initial begin

        $dumpfile("johnson_counter.vcd");
        $dumpvars(0, johnson_counter_tb);

    end

endmodule