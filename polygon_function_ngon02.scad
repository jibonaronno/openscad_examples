
linear_extrude(height = 10)
{
    polygon(ngon(6, 10));
}

// Simple list comprehension for creating N-gon vertices
function ngon(num, r) = 
  [for (i=[0:num-1], a=i*360/num) [ r*cos(a), r*sin(a) ]];