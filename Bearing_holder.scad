
bearing_dia = 15;
width = 25;

translate([0, 40, 0]){
    union(){
        translate([0, 0, 45]){
            rotate([90, 0, 0]){
                linear_extrude(height = width, scale = 1){
                    difference(){
                        offset(10) square(50, center = true);
                        circle(bearing_dia);
                    }
                }
            }
        }
        difference(){
            translate([0, 0, 10]){
                rotate([90, 0, 0]){
                    linear_extrude(height = width, scale = 1){
                        square([130, 20], center = true);
                    }
                }
            }
            translate([0, 0, -2]){
                #linear_extrude(height = 25){
                    translate([50, -(width/2), 0]) circle(4);
                    translate([-50, -(width/2), 0]) circle(4);
                }
            }
        }
    }
}

difference(){
    square([130, 20], center = true);
    translate([50, 0, 0]) circle(4);
    translate([-50, 0, 0]) circle(4);
}
