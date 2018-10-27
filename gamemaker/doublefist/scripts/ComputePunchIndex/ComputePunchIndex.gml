if (abs(argument0) <= 0.2) 
{
	// Don't move arm
	return 0;
}
else if (argument0 > 0.2 && argument0 <= 0.6)
{
	return 1;
}

return 2;