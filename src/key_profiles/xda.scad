module xda_row(row=0, column = 0) {
  $key_shape_type = "sculpted_square";
  $bottom_key_width = 18.24; // 18.4;
  $bottom_key_height = 18.24; // 18.4;
  $width_difference = 6; // 5.7;
  $height_difference = 6; // 5.7;
  $top_tilt = row == 0 ? 0 : row == 5 ? -21 : (row-3) * 7;
  $top_skew = 0;
  $dish_type = "spherical";
  $dish_depth = 0.65;
  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $height_slices = 10;
  $enable_side_sculpting = true;
  $corner_radius = 0.5;

  $top_tilt_y = side_tilt(column);
  extra_height = $double_sculpted ? extra_side_tilt_height(column) : 0;

  depth_raisers = [0, 3.5, 1, 0, 1, 3];
  // Measured height was 8.3 at the corner
  $total_depth = 8.7 + extra_height + depth_raisers[row];
  children();
}
