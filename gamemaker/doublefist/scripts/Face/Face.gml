
abs_xspeed = abs(hspeed);
abs_yspeed = abs(vspeed);

if (abs_xspeed > 0.5 || abs_yspeed > 0.5)
{
	sign_xspeed = sign(hspeed);
	sign_yspeed = sign(vspeed);
	//debug_message = "Signs and speeds : " + string(sign_xspeed) + " : " + string(sign_yspeed) + ":" + string(abs_xspeed) + ":" + string(abs_yspeed);
	
	//show_debug_message(debug_message);
	
	// Upper right quadrant for direction
	if (sign_xspeed >= 0 && sign_yspeed >= 0)
	{
		if (abs_xspeed > abs_yspeed)
		{
			// Right
			sprite_index = spr_walking_right;
			image_xscale = abs(image_xscale);
		}
		else
		{
			// Up
			sprite_index = spr_dude_walking;
			image_xscale = abs(image_xscale);
		}
	}
	else if (sign_xspeed < 0 && sign_yspeed >= 0)
	{
		// Upper left
		if (abs_xspeed > abs_yspeed)
		{
			// Left
			sprite_index = spr_walking_right;
			image_xscale = -abs(image_xscale);
		}
		else
		{
			// Up
			sprite_index = spr_dude_walking;
			image_xscale = abs(image_xscale);
		}
	}
	else if (sign_xspeed < 0 && sign_yspeed < 0)
	{
		// Bottom left
		if (abs_xspeed > abs_yspeed)
		{
			// Left
			sprite_index = spr_walking_right;
			image_xscale = -abs(image_xscale);
		}
		else
		{
			// Down
			sprite_index = spr_dude_walking;
			image_xscale = abs(image_xscale);
		}
	}
	else
	{
		// Bottom right
		if (abs_xspeed > abs_yspeed)
		{
			// Right
			sprite_index = spr_walking_right;
			image_xscale = abs(image_xscale);
		}
		else
		{
			// Down
			sprite_index = spr_dude_walking;
			image_xscale = abs(image_xscale);
		}
	}
}
