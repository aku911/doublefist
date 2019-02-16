scene_x = camera_get_view_x(view_camera[0]);
width_of_scene = camera_get_view_width(view_camera[0]);

scene_y = camera_get_view_y(view_camera[0]);
height_of_scene = camera_get_view_height(view_camera[0]);
	
subtitles = instance_create_layer(
	scene_x + (width_of_scene / 2) - (150),
	scene_y + .90 * height_of_scene,
	"Instances",
	obj_subtitles);
		
subtitles.messages = argument0;
subtitles.text_speed = 0.5;
subtitles.message_end = argument1;