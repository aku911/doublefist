if (abs(argument0) <= 0.2) 
{
	// Don't move arm
	return 0;
}
else if (abs(argument0) > 0.2 && abs(argument0) <= 0.6)
{
	return 1;
}

return 2;