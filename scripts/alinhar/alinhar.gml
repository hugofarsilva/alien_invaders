/// @description draw_set_align(valign, halign)
/// @arg valign
/// @arg halign
function draw_set_align(_valign = -1, _halign = -1) {
  draw_set_valign(_valign);
  draw_set_halign(_halign);
}

/// @description draw_set_align_ext(font, color, valign, halign)
/// @arg font
/// @arg color
/// @arg valign
/// @arg halign
function draw_set_align_ext(_font = -1, _color = c_white, _valign = -1, _halign = -1) {
  draw_set_valign(_valign);
  draw_set_halign(_halign);
  draw_set_color(_color);
  draw_set_font(_font);
}