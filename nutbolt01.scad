//Using BOSL library to create components Nut & Bolt
//BOSL Library is copied to \Documents\OpenSCAD\libraries\BOSL
//This is thread creation example of sharp edged threads. 
//Edge angle is defined by thread_angle parameter.
include <BOSL/constants.scad>
use <BOSL/threading.scad>
use <BOSL/transforms.scad>

union(){
    up(20){
        //trapezoidal_threaded_rod(d=8, l=40, pitch=2, thread_angle=15, $fn=22);
        trapezoidal_threaded_rod(d=10, l=40, pitch=2, thread_angle=45, $fn=32);
    }

    trapezoidal_threaded_nut(od=16, id=4, h=8, pitch=2, slop=0.2, align=V_UP);
    
}

right(25) trapezoidal_threaded_nut(od=16, id=8.2, h=8, pitch=2, slop=0.2, align=V_UP);
