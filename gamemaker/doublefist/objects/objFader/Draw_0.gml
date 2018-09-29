a = clamp(a+(fade*0.015), 0, 1);

if  (a ==1)
{
	audio_stop_sound(bgmusic);
	room_goto_next();
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
