`timescale 1ns / 1ps


module debouncing_clock(input clk, output reg [3:0] counter = 0);
    
    always @ (posedge clk)
    
    begin
        if(counter < 10) 
        begin
            counter <= counter + 1;
        end
    end
endmodule

// readme 
// if topstudent clock is 1000hz and counter clock is 100hz 
// this means top student refreshes every 1ms and counter clock need to count 10 times -> 10ms   