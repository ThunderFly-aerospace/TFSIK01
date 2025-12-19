mcx_dist = 15.2-0.4;
SMA_nut_d = 9.5;
SMA_cylinder_nut_d = 12.45;
SMA_screw_d = 6.5;
SMA_nut_l = 9;


jst_from_side = 2+0.5;

wall_side = 1;
layer_thickness = 0.2;
label_lenght = mcx_dist*2.5;
echo("Label space lenght:", label_lenght);

module tfsik_antenna_holder_SMA_hex(){

    difference(){
        hull(){
          translate([0, 0, -SMA_nut_d/2 - 2*layer_thickness]) cube([mcx_dist*1.5, SMA_nut_l, SMA_nut_d + 4*layer_thickness], center=true);
          translate([0, 0, -2*layer_thickness]) cube([label_lenght, SMA_nut_l, 4*layer_thickness], center=true);
        }

        // MCX

        for(x=[0.5*mcx_dist, -0.5*mcx_dist]) translate([x, 0, 0]){
            translate([0, -2, -SMA_nut_d/2 - 2*layer_thickness]) rotate([-90, 0, 0]) cylinder(d=SMA_screw_d, h=10, $fn=30);
            translate([0, -wall_side -SMA_nut_l/2, -SMA_nut_d/2 - 2*layer_thickness]) rotate([-90, 0, 0]) cylinder(d=SMA_nut_d, h=SMA_nut_l, $fn=6);
        }

        for(x=[0.5*(mcx_dist*1.5+SMA_nut_d), -0.5*(mcx_dist*1.5+SMA_nut_d)]) translate([x, 0, 0]){
            translate([0, 0, -6]) cylinder(d=2.5, h=10, $fn=30);
            translate([0, 0, -9 - 4*layer_thickness]) cylinder(d=6, h=SMA_nut_l, $fn=30);
        }

    }

}

//tfsik_antenna_holder_SMA_hex();


module tfsik_antenna_holder_SMA_cylinder(){

    difference(){
        hull(){
          translate([0, 0, -SMA_cylinder_nut_d/2 - 5*layer_thickness]) cube([mcx_dist*1.7, SMA_nut_l, SMA_cylinder_nut_d + 10*layer_thickness], center=true);
          translate([0, 0, 0]) cube([label_lenght*1.2, SMA_nut_l, 10*layer_thickness], center=true);
        }

        // MCX

        for(x=[0.5*mcx_dist, -0.5*mcx_dist]) translate([x, 0, 0]){
            //translate([0, -2, -SMA_nut_d/2 - 2*layer_thickness]) rotate([-90, 0, 0]) cylinder(d=SMA_screw_d, h=10, $fn=30);
            translate([0, -SMA_nut_l, -SMA_cylinder_nut_d/2 - 2*layer_thickness]) rotate([-90, 0, 0]) cylinder(d=SMA_cylinder_nut_d, h=SMA_nut_l*2, $fn=30);
        }

        for(x=[0.5*(mcx_dist*1.5+SMA_cylinder_nut_d), -0.5*(mcx_dist*1.5+SMA_cylinder_nut_d)]) translate([x, 0, 0]){
            translate([0, 0, -6]) cylinder(d=2.5, h=10, $fn=30);
            translate([0, 0, -SMA_cylinder_nut_d - 4*layer_thickness]) cylinder(d=6, h=SMA_cylinder_nut_d, $fn=30);
        }

    }

}


translate([0, 0, 15])
    tfsik_antenna_holder_SMA_cylinder();
