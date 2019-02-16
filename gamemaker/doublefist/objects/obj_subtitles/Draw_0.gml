// Draw the appropriate text at our x y 
draw_set_halign(fa_left);
draw_set_font(font_subtitles)
draw_set_color(c_black);
draw_text_ext(x, y, message_draw, 20, 300);
draw_set_color(c_white);
draw_text_ext(x-1, y-1, message_draw, 20, 300);

if (waiting_for_a) {
	draw_sprite(spr_a_button, step_index, x + 300, y + 10);
}
