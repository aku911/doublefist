var layid = layer_get_id("ontop")
global.ontop_surface = -1;
layer_script_begin(layid, ontop_begin);
layer_script_end(layid, ontop_end);