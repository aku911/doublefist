var spr = argument0;
var spr_height = sprite_get_height(spr);
var spr_width = sprite_get_width(spr);
var spr_index = argument1;
var spr_x = argument2;
var spr_y = argument3;

show_debug_message("Drawing sprite shadow" + string(spr) + " at " + string(spr_x) + "," + string(spr_y));

var sx = 7;
var sy = -(spr_height / 2);
gpu_set_fog(true, c_black, 0, 1);
draw_sprite_pos(spr, spr_index, 
	spr_x - (spr_width / 2) -sx,
	spr_y - sy,
	spr_x + (spr_width / 2) -sx,
	spr_y - sy,
	spr_x + (spr_width / 2),
	spr_y,
	spr_x - (spr_width / 2),
	spr_y, 
	.5);
gpu_set_fog(false, c_white, 0, 0);