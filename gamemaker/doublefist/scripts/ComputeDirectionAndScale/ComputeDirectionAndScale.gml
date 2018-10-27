
abs_xspeed = abs(hspeed);
abs_yspeed = abs(vspeed);

// Convention is that up is 0, right is 1, down is 2, left is 3 (although we just use 1 and flip)
result = ds_list_create();

if (abs_xspeed > 0.5 || abs_yspeed > 0.5)
{
	sign_xspeed = sign(hspeed);
	sign_yspeed = sign(vspeed);
	
	// Upper right quadrant for direction
	if (sign_xspeed >= 0 && sign_yspeed >= 0)
	{
		if (abs_xspeed > abs_yspeed)
		{
			// Right
			ds_list_add(result, "right");
			ds_list_add(result, abs(image_xscale));
		}
		else
		{
			// Up
			ds_list_add(result, "up");
			ds_list_add(result, abs(image_xscale));
		}
	}
	else if (sign_xspeed < 0 && sign_yspeed >= 0)
	{
		// Upper left
		if (abs_xspeed > abs_yspeed)
		{
			// Left
			ds_list_add(result, "left");
			ds_list_add(result, -abs(image_xscale));
		}
		else
		{
			// Up
			ds_list_add(result, "up");
			ds_list_add(result, abs(image_xscale));
		}
	}
	else if (sign_xspeed < 0 && sign_yspeed < 0)
	{
		// Bottom left
		if (abs_xspeed > abs_yspeed)
		{
			// Left
			ds_list_add(result, "left");
			ds_list_add(result, -abs(image_xscale));
		}
		else
		{
			// Down
			ds_list_add(result, "down");
			ds_list_add(result, abs(image_xscale));
		}
	}
	else
	{
		// Bottom right
		if (abs_xspeed > abs_yspeed)
		{
			// Right
			ds_list_add(result, "right");
			ds_list_add(result, abs(image_xscale));
		}
		else
		{
			// Down
			ds_list_add(result, "down");
			ds_list_add(result, abs(image_xscale));
		}
	}
}

return result;
