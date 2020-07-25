
include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/paths.scad>
use <BOSL/math.scad>
//path.scad needed for trace_polyline()
//math.scad needed for slice()

/*
p0 = [40, 0];
p1 = [0, 0];
p2 = [30, 30];
trace_polyline([p0,p1,p2], showpts=true, size=0.5, color="green");
fbez = fillet3pts(p0,p1,p2, 10);
trace_bezier(slice(fbez, 1, -2), size=1);
*/

//total 3 segments has 4 stage of controls.
bez = [
       [0,0], [-5,30], //first poly_point, control_point
       [20,70], [50,50], [70,30], //c_point, p_point, c_point
       [60,25], [70,0], [80,-25],//c_point, p_point, c_point
       [80,-50], [50,-50]//c_point, p_point
   ];
   trace_polyline(bez, size=1, N=3, showpts=true);
   trace_polyline(bezier_polyline(bez, N=3), size=3);
