space_hit = keyboard_check_pressed(vk_space);
abutton_hit = gamepad_button_check_pressed(0, gp_face1);
if (space_hit || abutton_hit)
{
	if (room == death) 
	{
		audio_stop_all();
		room_goto(Dojo);
	} 
	else 
	{
		room_goto_next();
	}
}