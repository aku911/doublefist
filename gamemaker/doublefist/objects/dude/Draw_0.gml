if (health > 0)
{
	if (base != noone) 
	{
		draw_sprite_ext(base, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	}

	if (punch != noone)
	{
		draw_sprite_ext(punch, punch_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	}

	if (being_injured)
	{
	    base_width = sprite_get_width(base);
	    health_width = sprite_get_width(spr_health_bar);
		health_lost_p = (max_health - health) / max_health;
		number_frames = sprite_get_number(spr_health_bar) -1;
		frame = round(number_frames * health_lost_p);
		health_alpha = clamp(health_alpha+(-0.015), 0, 1);
	
	    draw_sprite_ext(spr_health_bar, frame, x + base_width / 2 + health_width / 2,y, 1, 1, 0, c_white, health_alpha);
	}
}