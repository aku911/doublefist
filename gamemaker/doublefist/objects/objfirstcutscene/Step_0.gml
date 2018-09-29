var bid = layer_get_id("back_cutscene");
var b_hspeed = layer_get_hspeed(bid);
var b_xcoord = layer_get_x(bid);
if (b_xcoord <= -973)
{
	layer_hspeed(bid, 0);
	audio_stop_sound(bgmusic);
}
if (b_xcoord <= -487 && instance_number(objFader) == 0)
{
	in = instance_create_layer(0, 0, layer_get_id("fade_layer"), objFader);
	in.bgmusic = bgmusic;
}