include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <BOSL/math.scad>
use <BOSL/transforms.scad>
//path.scad needed for trace_polyline()
//math.scad needed for slice()

path = [ [0, 0, 0], [33, 33, 33], [66, -33, -33], [100, 0, 0] ];

extrude_2d_shapes_along_bezier(path) difference(){
    difference(){
        circle(r=10);
        fwd(10/2) circle(r=8);
    }
}