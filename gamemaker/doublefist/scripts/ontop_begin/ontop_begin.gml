if (event_type == ev_draw) {
    if (event_number == 0) {
        if (!surface_exists(global.ontop_surface)) {
            global.ontop_surface = surface_create(4000, 4000);
        }
 
		var cam = view_camera[view_current]
		surface_set_target(global.ontop_surface);
        draw_clear_alpha(c_black, 0.0);
		//camera_apply(cam); 
    }
}