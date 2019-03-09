dude_inst = instance_find(dude, 1)
if (dude_inst != noone) {
	cam = camera_get_active();
	if (camera_get_view_target(cam) == noone && dude_inst.x < 136) {
		camera_set_view_target(cam, dude)
	}
}