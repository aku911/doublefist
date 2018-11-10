vspeed = 0;
hspeed = 0;

// Set a variable that means if we should change our current sprites
should_change_base = false;

// First figure out our speed.
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
		self.base = spr_dude_walking;
		self.punch = rightstick > 0 ? spr_punch_right : spr_punch_left;
		self.punch_index = 0;
		if (should_change_punch) 
		{
			self.punch_index = script_execute(ComputePunchIndex, rightstick);
		}
		break;

	case "up":
		self.base = spr_dude_walking;
		self.punch = rightstick > 0 ? spr_punch_right : spr_punch_left;
		self.punch_index = 0;
		if (should_change_punch) 
		{
			self.punch_index = script_execute(ComputePunchIndex, rightstick);
		}
		break;

	case "left":
	case "right":
		self.base = should_change_punch ? spr_right_base : spr_walking_right;
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
}
else 
{
	self.punch_power = 0;
}

// Horizontal collision
if (place_meeting(x + hspeed, y, wall)) 
{
	while(!place_meeting(x + sign(hspeed), y, wall))
	{
		x += sign(hspeed);
	}
	hspeed = 0;
}

// Vertical collision
if (place_meeting(x, y + vspeed, wall)) 
{
	while(!place_meeting(x, y + vspeed, wall))
	{
		y += sign(vspeed);
	}
	vspeed = 0;
}


