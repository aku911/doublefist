var l1806AF3C_0 = false;
l1806AF3C_0 = instance_exists(dude);
if(l1806AF3C_0)
{
	direction = point_direction(x, y, dude.x, dude.y);
}

script_execute(Face, spr_mo_down, spr_mo_right, spr_mo_up, spr_mo_left);

// Check for collisions with the dude
if (dude.punch_index >= 2) 
{
	left = sprite_get_bbox_left(dude.punch) + dude.x;
	right = sprite_get_bbox_right(dude.punch) + dude.x;
	bottom = sprite_get_bbox_bottom(dude.punch) + dude.y;
	top = sprite_get_bbox_top(dude.punch) + dude.y;
	instance = collision_rectangle(left, top, right, bottom, mohawk, false, false);
	if (instance == self)
	{
		if (speed != knockback_speed) 
		{
			HP += -dude.punch_power;
		}

		// Knock our dude back
		speed = knockback_speed;

		// Punch sound
		audio_play_sound(snd_punch, 0, false);

		if(HP <= 0)
		{
			instance_destroy();
		}

		alarm_set(0, room_speed / 2);
	}
}