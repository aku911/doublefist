if (event_type == ev_draw) {
    if (event_number == 0) {
  
        surface_reset_target();
		//camera_apply(camera_create_view(0,0, view_wport[view_current], view_hport[view_current]));
        draw_surface(global.ontop_surface, 0, 0);
    }
}