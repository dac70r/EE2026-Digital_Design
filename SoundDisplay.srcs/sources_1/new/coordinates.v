`timescale 1ns / 1ps

module pixel_converter(
input [12:0]pix_index, 
output [11:0]x_coord, [11:0]y_coord

    );
    
    assign x_coord = pix_index % 96;
    assign y_coord = pix_index / 96;
endmodule