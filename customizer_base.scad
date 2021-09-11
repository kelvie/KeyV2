// entry point for customizer script. This probably isn't useful to most people,
// as it's just a wrapper that helps generate customizer.scad for thingiverse.

/* [Basic-Settings] */

// what preset profile do you wish to use? disable if you are going to set paramters below
key_profile = "dcs"; // [dcs, oem, dsa, sa, g20, xda, disable]
// what key profile row is this keycap on? 0 for disable
row = 1; // [5,1,2,3,4,0]

// What does the top of your key say?
legend = "";

// Legend for the "shift" version of the key -- it will be displayed on top
shift_legend = "";

// What does the front of your key say?
front_legend = "";

// Shift the front text up (positive) or down (negative)
front_voffset = 0; // [-2:0.1:2]

$using_customizer = true;

include <src/settings.scad>

include <src/key_sizes.scad>
include <src/key_profiles.scad>
include <src/key_types.scad>
include <src/key_transformations.scad>
include <src/key_helpers.scad>
include <src/key.scad>

key_profile(key_profile, row) legend(legend, shift_text=shift_legend) front_legend(front_legend, [0, -front_voffset], $front_font_size) {
  key();
}
