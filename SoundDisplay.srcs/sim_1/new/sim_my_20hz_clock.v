`timescale 1ns / 1ps

module sim_my_20hz_clock();

    reg sim_basys_clock;
    wire sim_my_clock;
    reg [31:0] sim_my_m_value;
    
    //
    my_20hz_clock dut ( .my_m_value(sim_my_m_value), .basys_clock(sim_basys_clock), .my_clock(sim_my_clock));
    
    initial begin
        sim_basys_clock = 0;
        sim_my_m_value = 7; 
    end
    
    always begin
            #5 sim_basys_clock = ~sim_basys_clock;
        end
        
endmodule
