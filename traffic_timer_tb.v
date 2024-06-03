`timescale 1ns / 1ps

module traffic_timer_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg clk = 0;
    reg reset = 1;
    reg day = 0;
    wire red, yellow, green;

    // Instantiate the traffic timer module
    traffic_timer uut (
        .clk(clk),
        .reset(reset),
        .day(day),
        .red(red),
        .yellow(yellow),
        .green(green)
    );
    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk; 

    // Testbench stimulus
    initial begin
        $dumpfile("traffic_timer_tb.vcd");
        $dumpvars(0, traffic_timer_tb);
        
        // Wait for initial stabilization
        #50;
        day = 0;

        // Reset assertion
        reset = 0;
        #100;

        // Day/night simulation
        #100;
        day = 1;
        #200;
        day = 0;
        #200;
        day = 1;
        #200;
        day = 0;
        
        // End simulation
        #100;
        $finish;
    end

endmodule
