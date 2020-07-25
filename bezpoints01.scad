include <BOSL/constants.scad>
use <BOSL/beziers.scad>
/*
bez = [[0,0], [30,30], [80,0]];
trace_bezier(bez, N=len(bez)-1);
translate(bez_point(bez, 0.3)) color("red") sphere(1);
*/

/*
bez = [[0,0], [5,35], [60,-25], [80,0]];
trace_bezier(bez, N=len(bez)-1);
translate(bez_point(bez, 0.8)) color("red") sphere(1);
*/

/*
bez = [[0,0], [5,15], [40,40], [60,-15], [80,0]];
trace_bezier(bez, N=len(bez)-1);
translate(bez_point(bez, 0.8)) color("red") sphere(1);
*/


//Find closest point on the curve nearest to pt [40, 15]
pt = [40,15];
bez = [[0,0], [20,40], [60,-25], [80,0]];
u = bezier_segment_closest_point(bez, pt);
trace_bezier(bez, N=len(bez)-1);
color("red") translate(pt) sphere(r=1);
color("blue") translate(bez_point(bez,u)) sphere(r=1);
echo(bezier_segment_length(bez));
