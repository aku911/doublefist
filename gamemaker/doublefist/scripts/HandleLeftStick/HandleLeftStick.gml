vspeed = 0;
hspeed = 0;

y_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
x_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

if (!is_punching)
{
	if (abs(x_speed) > 0.1 || abs(y_speed) > 0.1)
	{
		// Start animating since we're moving
		image_speed = 1;
		

		if (abs(x_speed) > 0.1) vspeed = x_speed * 5;
		if (abs(y_speed) > 0.1) hspeed = y_speed * 5;

		script_execute(Face, spr_dude_walking, spr_walking_right, spr_dude_walking, spr_walking_right);
		//script_execute(Debugging);
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
}