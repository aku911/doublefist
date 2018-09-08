draw_set_colour($FF000000 & $ffffff);
draw_set_alpha(($FF000000 >> 24) / $ff);

draw_set_font(arial);

draw_text(0, 0, string("Direction:") + string(direction));