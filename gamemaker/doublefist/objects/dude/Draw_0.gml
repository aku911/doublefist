if (health > 0)
{
	if (sprite_index != noone) 
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	}

	if (punch != noone)
	{
		draw_sprite_ext(punch, punch_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		// Debug code for punching
	//	xoffset = self.x - (image_xscale * sprite_get_xoffset(base));
	//	yoffset = self.y - (image_yscale * sprite_get_yoffset(base));
	//	left = (sprite_get_bbox_left(punch) * image_xscale) + xoffset;
	//	right = (sprite_get_bbox_right(punch) * image_xscale) + xoffset;
	//	bottom = (sprite_get_bbox_bottom(punch) * image_yscale) + yoffset;
	//	top = (sprite_get_bbox_top(punch) * image_yscale) + yoffset;		
	//	current_color = draw_get_colour()
	//	draw_set_colour(c_yellow);
	//	draw_rectangle(left, top, right, bottom, true);
	//	draw_set_colour(current_color);
	}

	if (being_injured)
	{
	    base_width = sprite_get_width(sprite_index);
	    health_width = sprite_get_width(spr_health_bar);
		health_lost_p = (max_health - health) / max_health;
		number_frames = sprite_get_number(spr_health_bar) -1;
		frame = round(number_frames * health_lost_p);
		health_alpha = clamp(health_alpha+(-0.015), 0, 1);
	
	    draw_sprite_ext(spr_health_bar, frame, x + base_width / 2 + health_width / 2,y, 1, 1, 0, c_white, health_alpha);
	}
}