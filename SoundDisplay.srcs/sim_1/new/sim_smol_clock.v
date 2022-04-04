`timescale 1ns / 1ps

module sim_smol_clock();

    reg sim_clk;
    wire [3:0] sim_counter;
    wire [0:0] sim_logic;
    
    debouncing_clock sim_db_clk(sim_clk, sim_counter, sim_logic);
    
    initial
        begin
            sim_clk = 0;           
        end
        
    always begin
            #5 sim_clk = ~sim_clk;
        end 
        
       
endmodule
