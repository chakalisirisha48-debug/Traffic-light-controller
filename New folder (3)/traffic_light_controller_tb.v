`timescale 1ns/1ps

module traffic_light_controller_tb;

reg clk;
reg rst;

wire [2:0] light;

// Instantiate DUT
traffic_light_controller uut(
    .clk(clk),
    .rst(rst),
    .light(light)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    // Run simulation
    #120;

    $finish;
end

initial
begin
    $display("Time\tReset\tLight");
    $monitor("%0t\t%b\t%b",$time,rst,light);
end

endmodule