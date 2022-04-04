`timescale 1ns / 1ps

module BCD_to_Cathodez( input [3:0]digit,
output reg [7:0] cathode = 0);
//input peaker, input switcherer,
always @ (digit)
begin
//    if (switcherer == 1)begin
    case(digit)
    0: cathode = 8'b1100_0000;
    1: cathode = 8'b11111001;
    2: cathode = 8'b10100100;
    3: cathode = 8'b10110000;
    4: cathode = 8'b10011001;
    5: cathode = 8'b10010010;
    6: cathode = 8'b10000010;
    7: cathode = 8'b11111000;
    8: cathode = 8'b10000000;
    9: cathode = 8'b10010000;
    10: cathode = 8'b10000000;
    11: cathode = 8'b1010_0001;
    default: cathode = 8'b0000_0000;
    endcase //end
    
//    else 
//        if(peaker >=0 && peaker <= 2090) begin  cathode = 8'b11111001; end // 0-40
//        else if(peaker >=2091 && peaker <= 2600) begin cathode = 8'b10100100; end // 40-50
//        else if(peaker >=2601 && peaker <= 3110) begin cathode = 8'b10110000; end // 50-60
//        else if(peaker >=3111 && peaker <= 3620) begin cathode = 8'b10011001; end //60-70
//        else if(peaker >=3621&& peaker <= 4000) begin cathode = 8'b10010010; end //70-80
//        else begin end
end
endmodule
