//This tutorial came from 
//https://openhome.cc/eGossip/OpenSCAD/Heart.html
//This page has a detail drawing and mathmetical explanations.
radius = 10;

module heart(radius) {
    rotated_angle = 45;
    diameter = radius * 2;
    $fn = 48;

    translate([-radius * cos(rotated_angle), 0, 0])
    {
        rotate(-rotated_angle) union() {
            #circle(radius);
            translate([0, -radius, 0]) 
                square(diameter);
        }
    }
}

heart(radius);
mirror([1, 0, 0]) heart(radius);