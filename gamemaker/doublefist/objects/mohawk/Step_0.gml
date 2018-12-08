dude_exists = false;
dude_exists = instance_exists(dude);
dude_in_room = noone
if(dude_exists)
{
	dude_in_room = instance_find(dude, 0)
	direction = point_direction(x, y, dude_in_room.x, dude_in_room.y);
}

direction_and_scale = ComputeDirectionAndScale();
local_direction = ds_list_find_value(direction_and_scale, 0);

switch (local_direction) 
{
	case "down":
		self.base = spr_mo_down;
		self.punch = spr_mo_up_down_punch_right;
		self.punch_index = 0;
		break;

	case "up":
		self.base = spr_mo_up;
		self.punch = spr_mo_up_down_punch_right;
		self.punch_index = 0;
		break;

	case "left":
		self.base = spr_mo_left;
		self.punch = spr_mo_right_punch_left;
		self.punch_index = 0;
		break;
	
	
	case "right":
		self.base = spr_mo_right;
		self.punch = spr_mo_right_punch_right;
		self.punch_index = 0;
		break;
}

// Check for collisions with the dude
if (dude_in_room.punch_index >= 2) 
{
	instance = CollisionSprite(dude_in_room, dude_in_room.punch, mohawk);
    if (instance == self)
	{
		if (speed != knockback_speed) 
		{
			HP += -dude_in_room.punch_power;
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