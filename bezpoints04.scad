include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <BOSL/math.scad>
//path.scad needed for trace_polyline()
//math.scad needed for slice()
/*
bez = [
[0,0], [-5,30],
[20,60], [50,50], [110,30],
[60,25], [70,0], [80,-25],
[80,-50], [50,-50], [30,-50],
[5,-30], [0,0]
];
trace_bezier(bez, N=3, size=3);
linear_extrude(height=0.1) bezier_polygon(bez, N=3);
linear_extrude_bezier(bez, height=20, splinesteps=32, scale=0.8);
*/
path = [
[  0, 10], [ 50,  0], [ 50, 40],
[ 95, 40], [100, 40], [100, 45],
[ 95, 45], [ 66, 45], [  0, 20],
[  0, 12], [  0, 12], [  0, 10],
[  0, 10]
];
revolve_bezier(path, splinesteps=32, $fn=180);