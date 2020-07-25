
//This small example of creating N-gon 2D component help from C:\Program Files\OpenSCAD\examples\Functions\polygon_areas.scad .

echo(ngon(4,10));
polygon(ngon(4, 10));

// Simple list comprehension for creating N-gon vertices
function ngon(num, r) = 
  [for (i=[0:num-1], a=i*360/num) [ r*cos(a), r*sin(a) ]];