include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <BOSL/math.scad>
//path.scad needed for trace_polyline()
//math.scad needed for slice()
/*
bez = [[50,0], [40,10], [10,50], [0,30], [-10, 10], [-30,10], [-50,0]];
closed = bezier_close_to_axis(bez);
trace_bezier(closed, size=1);
*/
/*
bez = [[30,50], [10,40], [50,10], [30,0], [10, -10], [10,-30], [20,-50]];
closed = bezier_close_to_axis(bez, axis="Y");
trace_bezier(closed, size=1);
*/
/*
bez = [[30,50], [10,40], 
[50,10], [30,0], [10, -10], 
[10,-30], [20,-50]];
closed = bezier_offset(10, bez, axis="Y");
trace_bezier(closed, size=1);
*/