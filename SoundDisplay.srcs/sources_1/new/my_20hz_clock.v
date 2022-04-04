`timescale 1ns / 1ps

module my_20hz_clock(input basys_clock, input [31:0] my_m_value, output reg my_clock = 0);

reg [31:0] count = 4'b0000; //32-bit FPGA max allowed bits is 32
 
always @ (posedge basys_clock)

begin
    count <= (count == my_m_value) ? 0 : count + 1; // 10Hz clock
    my_clock <= (count==0)? ~my_clock: my_clock;
end

endmodule