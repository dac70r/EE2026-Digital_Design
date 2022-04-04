`timescale 1ns / 1ps


module seven_segment(input basys_clock,input [31:0]loudness, input switch,input [31:0]a,b, output [7:0] seg, output [3:0] an );
    //input [31:0]a, b,c,d,
    wire clk_xhz;
    wire [1:0] refreshcounterz;
//    reg [31:0] a = 6;
//    reg [31:0] b = 7;
    reg [31:0] c = 10;
    reg [31:0] d = 11;
    wire [3:0] one_digit;
    
    
    clock_divider freq_10hz (basys_clock, 1999, clk_xhz);
    refreshcounter refreshcounterWrapper (clk_xhz, refreshcounterz);
    anode_control anodecontrolWrapper (refreshcounterz,switch, an);
    BCD_control bcdWrapper( 
    .loudnesses(loudness),
    .switcherer(switch),
    .digit1(a),
    .digit2(b),
    .digit3(c),//10
    .digit4(d),//11
    .refreshcounter(refreshcounterz),
    .ONE_DIGIT(one_digit));
    
    BCD_to_Cathodez BCDtocathodezWrapper (one_digit, seg);
    
endmodule
