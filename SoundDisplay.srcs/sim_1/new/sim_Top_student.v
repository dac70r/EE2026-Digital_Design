`timescale 1ns / 1ps

module sim_Top_Student();

    reg sim_basys_clock;
    reg sim_J_MIC3_Pin3;   // Connect from this signal to Audio_Capture.v
    wire sim_J_MIC3_Pin1;   // Connect to this signal from Audio_Capture.v
    wire sim_J_MIC3_Pin4;    // Connect to this signal from Audio_Capture.v
    wire [11:0] sim_led;
    
    wire rgb_cs, rgb_sdin, rgb_sclk, rgb_d_cn, rgb_resn, 
            rgb_vccen, rgb_pmoden;
    
    reg [15:0] sim_oled_data;
    wire[11:0] sim_pixel_index;  
    
    Top_Student test_unit_x (.basys_clock(sim_basys_clock),.J_MIC3_Pin3(sim_J_MIC3_Pin3)
    ,.J_MIC3_Pin1(sim_J_MIC3_Pin1)
    ,.J_MIC3_Pin4(sim_J_MIC3_Pin4)
    ,.led(sim_led) );
    
    
       
    
endmodule
