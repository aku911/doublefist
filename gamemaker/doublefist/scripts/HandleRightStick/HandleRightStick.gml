rightstick = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axisrh) : 0;
if(abs(rightstick) > 0.1 && can_punch)
{
	can_punch = 0;
	is_punching = 1;

	if(rightstick > 0)
	{
		sprite_index = spr_punch_right;
		image_index = 0;
		image_speed = 1;
	}
	if(rightstick < 0)
	{
		sprite_index = spr_punch_left;
		image_index = 0;
		image_speed = 1;
	}
}
else
{
	if(abs(rightstick) < 0.1 || sign(self.last_rightstick) != sign(rightstick))
	{
		can_punch = 1;
	}
}

self.last_rightstick = rightstick;