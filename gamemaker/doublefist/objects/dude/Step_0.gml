event_inherited();
vspeed = 0;
hspeed = 0;

// Center view on the player
camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));

// Move backgrounds as we move
var _cam_x = camera_get_view_x(view_camera[0]);
layer_x("sky", _cam_x * 0.25); 
layer_x("mountains", _cam_x * 0.5); 


// Set a variable that means if we should change our current sprites
should_change_base = false;
colliding_with_door = false;

// figure out if about to run into door
y_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
x_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;
 

if (abs(x_speed) > 0.1 || abs(y_speed) > 0.1)
{
	// Start animating since we're moving
	image_speed = 1;

	if (abs(x_speed) > 0.1) vspeed = x_speed * 5;
	if (abs(y_speed) > 0.1) hspeed = y_speed * 5;
		
	should_change_base = true;
}
else
{
	image_speed = 0;
	image_index = 0;
}


// Then figure out our right stick
rightstick = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axisrh) : 0;
should_change_punch = false;
if(abs(rightstick) > 0.1)
{
	should_change_punch = true;
}


if (should_change_base) 
{
	self.direction_and_xscale = script_execute(ComputeDirectionAndScale);
}

local_direction = ds_list_find_value(self.direction_and_xscale, 0);
image_xscale = ds_list_find_value(self.direction_and_xscale, 1);
local_punch_index = self.punch_index;

switch (local_direction) 
{
	case "down":
		self.sprite_index = spr_dude_walking;
		self.punch = rightstick > 0 ? spr_punch_right : spr_punch_left;
		self.punch_index = 0;
		if (should_change_punch) 
		{
			self.punch_index = script_execute(ComputePunchIndex, rightstick);
		}
		break;

	case "up":
		self.sprite_index = spr_dude_walking;
		self.punch = rightstick > 0 ? spr_punch_right : spr_punch_left;
		self.punch_index = 0;
		if (should_change_punch) 
		{
			self.punch_index = script_execute(ComputePunchIndex, rightstick);
		}
		break;

	case "left":
	case "right":
		self.sprite_index = should_change_punch ? spr_right_base : spr_walking_right;
		self.punch = should_change_punch ? spr_right_punch : noone;
		self.punch_index = 0;
		if (should_change_punch) 
		{
			self.punch_index = script_execute(ComputePunchIndex, rightstick);
		}
		break;
}

// Adjust punch power if we're at the same
if (self.punch_index == 2) 
{
	self.punch_power = local_punch_index == 2 ? max(4, self.punch_power - 4) : self.max_punch_power;
	if (local_punch_index != 2) 
	{
		audio_play_sound(snd_waa, 0, false);
	}
}
else 
{
	self.punch_power = 0;
}

script_execute(CollisionDude, dojo_wall);
script_execute(CollisionDude, wall);

if (place_meeting(x, y + vspeed, obj_inside_door)) 
{
	hspeed = 0;
	vspeed = 2;

	fade_layer = layer_get_id("fade_layer");
	fade_inst = layer_has_instance(fade_layer, objFader);
	if (((y + sprite_height / 2) > room_height) && !fade_inst) 
	{
		instance_create_layer(0, 0, layer_get_id("fade_layer"), objFader);
	}
}
if (place_meeting(x,y,mohawk) && !being_injured && self.punch_index < 2)
{
	being_injured = true;
	health_alpha = 1;
	health -= 2;
	alarm_set(0, room_speed * 3)
}

if (health <= 0) 
{
	instance_create_layer(0, 0, layer_get_id("fade_layer"), obj_death_fader);
}	