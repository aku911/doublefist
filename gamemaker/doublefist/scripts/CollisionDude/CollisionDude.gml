// Horizontal collision
if (place_meeting(x + hspeed, y, argument0)) 
{
	while(!place_meeting(x + sign(hspeed), y, argument0))
	{
		x += sign(hspeed);
	}
	hspeed = 0;
}

// Vertical collision
if (place_meeting(x, y + vspeed, argument0)) 
{
	while(!place_meeting(x, y + vspeed, argument0))
	{
		y += sign(vspeed);
	}
	vspeed = 0;
}