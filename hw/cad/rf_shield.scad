


module TFSIK_rf_shield(){
    width = 24;
    length = 21.7;
    depth = 3;
    wall = 0.8;
    
    roof_th = 0.7;

    difference(){
        translate([0, 0, depth/2]) cube([width, length, depth], center=true);
        
        difference(){
            translate([0, 0, depth/2-roof_th]) cube([width-2*wall, length-2*wall, depth], center=true);
        
        // vystuzeni
        
        //translate([0, length/2*0, depth-roof_th]) rotate([0, 90, 0]) cylinder(d=1, h=100, $fn=4, center=true);
        
        translate([width/2*0-3, 0, depth-roof_th]) rotate([90, 0, 0]) cylinder(d=1.4, h=length, $fn=4, center=true);
        translate([width/2*0+3, 0, depth-roof_th]) rotate([90, 0, 0]) cylinder(d=1.4, h=length, $fn=4, center=true);
        
        }
        
        //zkosene hrany
        translate([0, -length/2, depth]) rotate([0, 90, 0]) cylinder(d=2, h=100, $fn=4, center=true);
        translate([0, length/2, depth]) rotate([0, 90, 0]) cylinder(d=2, h=100, $fn=4, center=true);
        translate([-width/2, 0, depth]) rotate([90, 0, 0]) cylinder(d=2, h=100, $fn=4, center=true);
        translate([width/2, 0, depth]) rotate([90, 0, 0]) cylinder(d=2, h=100, $fn=4, center=true);
        
        
        // SMA connectors
        sma_dist = 15.2-0.4;
        sma_height = 1.5;
        sma_width = 7.4;
        sma_depth = 4;
        
        for(x=[-0.5*sma_dist, 0.5*sma_dist]) translate([x, -length/2, sma_height/2]) cube([sma_width, sma_depth*2, sma_height], center=true);
        
        // civky v zadni casti
        translate([-3.5+1, length/2, 1.5/2]) cube([16, 5, 1.5], center=true);
        
        // soucastky 
        translate([-4.5, length/2-4-1, 1.5/2]) cube([14, 8, 1.5], center=true);
        
    }
    
    



}


TFSIK_rf_shield();