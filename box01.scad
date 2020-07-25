include <NopSCADlib/core.scad>

include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/sheets.scad>
include <NopSCADlib/vitamins/inserts.scad>
use <NopSCADlib/printed/box.scad>
use <NopSCADlib/printed/corner_block.scad>
use <NopSCADlib/vitamins/washer.scad>
use <NopSCADlib/utils/quadrant.scad>
use <BOSL/transforms.scad>

//corner_block_assembly();

box = [M3_dome_screw, 3, DiBond, PMMA3, DiBond6, true, 150, 100, 70];
//box_corner_profile_2D(box);

echo(box_outset(box));

box_bezel_section(box, true, 3, 3, 2, 0);

up(30) box_corner_profile_section(box, 0, 3);
