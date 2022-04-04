`timescale 1ns / 1ps

module anode_control(
input [1:0] refreshcounter,
input switcher,
output reg [3:0] anode = 0
);
    always@(refreshcounter)
    
    begin
        if(switcher == 1)begin
        case(refreshcounter)
        2'b00:
            anode = 4'b1110;
        2'b01:
            anode = 4'b1101;
        2'b10:
            anode = 4'b1011;
        2'b11:
            anode = 4'b0111;
        endcase end
        
        else
            anode = 4'b1110;
        
    end
    
endmodule