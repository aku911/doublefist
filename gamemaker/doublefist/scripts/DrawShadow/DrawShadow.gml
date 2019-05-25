var spr = argument0;
var spr_height = sprite_get_height(spr);
var spr_width = sprite_get_width(spr);
var spr_index = argument1;
var spr_x = argument2;
var spr_y = argument3;
var x_scale = argument4;

show_debug_message("Drawing sprite shadow" + string(spr) + " at " + string(spr_x) + "," + string(spr_y));

var sx = 7;
var sy = -(spr_height / 2);
gpu_set_fog(true, c_black, 0, 1);

// We need flip x coords if the scale is negative
var x1 = spr_x - (spr_width / 2) -sx;
var x2 = spr_x + (spr_width / 2) -sx;
var x3 = spr_x + (spr_width / 2);
var x4 = spr_x - (spr_width / 2);

var flipped1 = x_scale >= 0 ? x1 : x2;
var flipped2 = x_scale >= 0 ? x2 : x1;
var flipped3 = x_scale >= 0 ? x3 : x4;
var flipped4 = x_scale >= 0 ? x4 : x3;

draw_sprite_pos(spr, spr_index, 
	flipped1,
	spr_y - sy,
	flipped2,
	spr_y - sy,
	flipped3,
	spr_y,
	flipped4,
	spr_y, 
	.5);
gpu_set_fog(false, c_white, 0, 0);