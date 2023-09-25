


pcb_width = 3*10+0.2;
pcb_length = 10*5+0.4;
pcb_thickness = 1.6;
pcb_max_bz = 0;
pcb_max_tz = 5;

roof_th = 1;

mcx_dist = 15.2-0.4;


jst_from_side = 2+0.5;

wall_side = 2;


module tfsik_box_top(){
 difference(){


    //translate([0,0, -10]) cylinder(d=3,h=10, $fn=30);

    union(){
    translate([0, 0, -2]) difference(){
        union(){
            cube([pcb_width, pcb_length, 3], center=true);
            for(x=[-20, -10, 0, 10, 20]) translate([0, x, -roof_th-1.5-1.2]) hull(){
                translate([0, 0, 1])  cube([pcb_width, 2.3, 2.5], center=true);
                translate([0, 0, 1.75-0.2]) cube([pcb_width+1.2, 2.3, 1.5], center=true);
            }    
        }
        cube([pcb_width-2, pcb_length-2, 10], center=true);
    }

    difference(){
    
    box_th = roof_th+1;
    translate([0, 0, -box_th/2]) cube([pcb_width+2*wall_side, pcb_length+2*wall_side, box_th], center=true);
    
   
    
    
    translate([pcb_width/2+wall_side, 0, 0]) rotate([90, 0, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    translate([-pcb_width/2-wall_side, 0, 0]) rotate([90, 0, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    translate([0, pcb_length/2+wall_side, 0]) rotate([0, 90, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    translate([0, -pcb_length/2-wall_side, 0]) rotate([0, 90, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    for(x=[-0.5, 0.5], y=[-0.5, 0.5]) translate([x*(-pcb_width-wall_side*2), y*(-pcb_length-wall_side*2), 0])  cylinder(d=3, h=100, $fn=4, center=true);
    
    
    }
    }
    
    
    
    // UART
    translate([-pcb_width/2+jst_from_side+0.5, -4-pcb_length/2-2.5, -5])
       minkowski(){
        cube([10.9-2, 4.5, 5]);
        cylinder(d=2, h=2, $fn=60);
    }
    
    // LEDKY
    translate([pcb_width/2-3.5-0.08, -pcb_length/2+4.8+0.25, -3-2.5+2])hull(){
        translate([0, -2, 0]) cylinder(d=2.5, $fn=60, h=10, center=true);
        translate([0, 2, 0]) cylinder(d=2.5, $fn=60, h=10, center=true);
        }
    
    translate([pcb_width/2-3.5-0.08, -pcb_length/2+4.8+0.25, -3-2.2+5])hull(){
        translate([0, -2, 0]) cylinder(d2=4, d1=2.5, $fn=60, h=0.5, center=true);
        translate([0, 2, 0]) cylinder(d2=4, d1=2.5, $fn=60, h=0.5, center=true);
        }
    

}

    leng = 4.6;
    translate([2, -20, 0]+[0, 0, -roof_th-leng-0.9]) cylinder(d=4, h=leng, $fn=50);

    translate([13.5, 23.5, 0]+[0, 0, -roof_th-leng-0.9]) rotate([0, 0, 45]) cylinder(d=4, h=leng, $fn=4);
    translate([-13.5, 23.5, 0]+[0, 0, -roof_th-leng-0.9])  rotate([0, 0, 45]) cylinder(d=4, h=leng, $fn=4);

    
    
    
    // UART
    translate([-pcb_width/2+jst_from_side-0.5, -4-pcb_length/2-0.5-0.5, -2.1-4]+[0,5,0])
        difference(){
        
            translate([-0.7, 0, 0.1]) cube([11+1.4, 4.5+0.8+0.5, 5]);
            translate([0, -0.1, -1.1-0.4+1]) cube([11, 4.5+0.5, 6.2]);
        }
        
    
    
    
    // LEDKY
    translate([pcb_width/2-3.5-0.08, -pcb_length/2+4.8+0.25, -3-2.5])
    difference(){
        hull(){
            translate([0, -2, 0]) cylinder(d=2.5+1, $fn=60, h=5);
            translate([0, 2, 0]) cylinder(d=2.5+1, $fn=60, h=5);
        }
        hull(){
           translate([0, -2, 0]) cylinder(d=2.5, $fn=60, h=5);
           translate([0, 2, 0]) cylinder(d=2.5, $fn=60, h=5);
        }
    }
    
}

rotate(180) translate([40, 0, 0]) tfsik_box_top();


module tfsik_box_bottom(){
    
    difference(){
    
    box_th = roof_th+pcb_thickness+pcb_max_tz;
    translate([0, 0, -box_th/2]) cube([pcb_width+2*wall_side, pcb_length+2*wall_side, box_th], center=true);
    
     difference(){
        translate([0, 0, -box_th/2-roof_th+0.2]) cube([pcb_width-3, pcb_length-3, box_th], center=true);
        cylinder(d=10, h=2, center=true, $fn=60);
     }

    
    difference(){
        translate([0, 0, -box_th/2-roof_th]) cube([pcb_width+0.2, pcb_length+0.2, box_th], center=true);
        
        #hull(){
            translate([0, 0, -2]) translate([0, pcb_length/2, -2]) cube([4, 0.5, 3], center=true);
            translate([0, 0, -2]) translate([0, pcb_length/2, -1.8]) cube([4, 1, 2], center=true);
        }
        
        
        for(x=[10, 20, 30, 40]) for(y=[-pcb_width/2, pcb_width/2]) translate([y, pcb_length/2-7.5-x, -roof_th-1.4]) cylinder(d=2.5, h=1.5, $fn=30);
    }
    
    for(x=[-20, -10, 0, 10, 20]) translate([0, x, -roof_th-pcb_thickness-4]) hull(){
            translate([0, 0, 1.5])  cube([pcb_width, 2.5, 3], center=true);
            translate([0, 0, 1]) cube([pcb_width+2, 2.5, 2], center=true);
        }
    
    // MCX
    
    for(x=[0.5*mcx_dist, -0.5*mcx_dist]) translate([x, pcb_length/2+0.1+0.8, -roof_th]){
        translate([0, -2, -2.5]) rotate([-90, 0, 0]) cylinder(d=5.2, h=10, $fn=30);
        //translate([0, -2, -2.5]) rotate([-90, 45, 0]) cylinder(d=7, h=10, $fn=4);
        translate([0, 0.5, -2.5]) cube([7, 2, 7], center=true);
        translate([0, -5.5, -3]) cube([10, 10, 6], center=true);
    }
    
    // UART
    translate([+pcb_width/2-10.9-jst_from_side+0.5, -4-pcb_length/2, -5-roof_th-pcb_thickness]) cube([10.9, 4, 5]);
    
    
    translate([pcb_width/2+wall_side, 0, 0]) rotate([90, 0, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    translate([-pcb_width/2-wall_side, 0, 0]) rotate([90, 0, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    translate([0, pcb_length/2+wall_side, 0]) rotate([0, 90, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    translate([0, -pcb_length/2-wall_side, 0]) rotate([0, 90, 0]) cylinder(d=2, h=100, $fn=4, center=true);
    for(x=[-0.5, 0.5], y=[-0.5, 0.5]) translate([x*(-pcb_width-wall_side*2), y*(-pcb_length-wall_side*2), 0])  cylinder(d=3, h=100, $fn=4, center=true);
    
    
    }

}


tfsik_box_bottom();