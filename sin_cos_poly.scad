//cos and sin values are x and y values of a circular polygon.
//We assume that radius is 10, which is hypotenuse (Otivooz).
//So sin(a) = perpendicular / hypotenuse. Because hypotenuse is 10.
//we just have to multiply the sin value with 10 wich is 
//y axis value.
a = 1*360/3;
x = 10*cos(a);
y = 10*sin(a);
translate([x, y]) sphere(r=1);

a1 = 2*360/3;
x1 = 10*cos(a1);
y1 = 10*sin(a1);
//translate([x1, y1]) sphere(r=1);

a2 = 3*360/3;
x2 = 10*cos(a2);
y2 = 10*sin(a2);
//translate([x2, y2]) sphere(r=1);