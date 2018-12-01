a = clamp(a+(fade*0.015), 0, 1);

if  (a == 1 && !changed_rooms)
{
	if (music != noone) 
	{
		audio_stop_sound(music);
	}
	if (next_room == noone && room_exists(room_next(room))) 
	{
		current_room = room_get_name(room)
		room_goto_next();
		current_room = room_get_name(room)
		changed_rooms = true;
	} 
	else if (room_exists(next_room))
	{
		room_goto(next_room);
		changed_rooms = true;
	}
	
	
	fade =-1;
}

if (a == 0 && fade == -1) 
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);

camera = view_camera[view_current];

camx = 	camera_get_view_x(camera);
camy =	camera_get_view_y(camera);
camw =	camera_get_view_width(camera);
camh = camera_get_view_height(camera);



draw_rectangle(
	camx,
	camy,
	camx + camw,
	camy + camh,
	0);

draw_set_alpha(1);
