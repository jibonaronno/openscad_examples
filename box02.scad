include <NopSCADlib/core.scad>

include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/sheets.scad>
include <NopSCADlib/vitamins/inserts.scad>
use <NopSCADlib/printed/box.scad>
use <NopSCADlib/printed/corner_block.scad>
use <NopSCADlib/vitamins/washer.scad>
use <NopSCADlib/utils/quadrant.scad>
use <BOSL/transforms.scad>

//Below box object definition is the type parameter for all the 
//functions related to box api of NopSCADlib library. All the parts 
//of this modular box will be generated accordingly this box type
//object definition. box[0] "M3_dome_screw" is a screw definition
//constant in <NopSCADlib/vitamins/screws.scad>, box[1] is the 
//thickness of the wall of the 3D printed parts, box[2] "DiBond" is
//the 3mm acrelyc sheet type defined in 
//<NopSCADlib/vitamins/sheets.scad>, box[3] "PMMA3" 
//is the 3mm acrelyc sheet type for top defined in 
//<NopSCADlib/vitamins/sheets.scad>, box[4] "DiBond6" is 6mm sheet
//type. box[5] is true to enable feet at bottom part, 
//box[6] Internal Width
//box[7] Internal Depth
//box[8] Internal Height
box = [M3_dome_screw, 3, DiBond, PMMA3, DiBond6, true, 150, 100, 70];

rows = 3;
cols = 3;
gap = 30;

//x_pitch = (box_width(box) + 2 * box_outset(box)) / cols + gap;
//y_pitch = (box_depth(box) + 2 * box_outset(box)) / rows + gap;

box_bezel_section(box, true, 3, 3, 0, 0);
//move([0, 50, 0]) box_bezel_section(box, true, 3, 3, 1, 0);
move([80, 0, 0]) box_bezel_section(box, true, 3, 3, 2, 0);
move([0, 50, 0]) box_bezel_section(box, true, 3, 3, 0, 2);
move([80, 50, 0]) box_bezel_section(box, true, 3, 3, 2, 2);
//move([80, 100, 0]) box_bezel_section(box, true, 3, 3, 0, 1);
move([25, 30, 0]) box_corner_profile_section(box, 0, 3);
move([50, 30, 0]) box_corner_profile_section(box, 0, 3);
move([75, 30, 0]) box_corner_profile_section(box, 0, 3);
move([100, 30, 0]) box_corner_profile_section(box, 0, 3);