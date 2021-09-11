module keybump(depth = 0, edge_inset=0.4) {
  radius = 0.5;
  dz = ($font_size - 2*radius)/2;

  module spheres() {
    rotate([90,0,90]) {
      translate([0, 0, -dz]) sphere(r=radius);
      translate([0, 0, dz]) sphere(r=radius);
    }
  }

  hull() {
    translate([0, -top_total_key_height()/2 + edge_inset, depth]) {
      spheres();
      translate([0,0,-radius]) spheres();
    }
  }
}
