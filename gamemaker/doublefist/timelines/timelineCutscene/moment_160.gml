
scene_x = camera_get_view_x(view_camera[0]);
width_of_scene = camera_get_view_width(view_camera[0]);
shin = instance_create_layer(scene_x + width_of_scene, grandpa.y + 100, "Instances", obj_shin);
with (shin)
{
	grandpa_for_shin = other.grandpa;
	speed = 1;
	direction = 140;
}