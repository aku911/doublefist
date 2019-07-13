
if (sprite_index != noone) 
{
	gpu_set_fog(true, c_black, 0, 0);
	var bm = gpu_get_blendmode_ext();
	gpu_set_blendmode_ext(bm_dest_alpha, bm[1]);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	gpu_set_blendmode_ext(bm[0], bm[1]);
	gpu_set_fog(false, c_white, 0, 1);
}

