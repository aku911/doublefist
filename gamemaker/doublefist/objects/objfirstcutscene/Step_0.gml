var bid = layer_get_id("back_cutscene");
var b_hspeed = layer_get_hspeed(bid);
var b_xcoord = layer_get_x(bid);
if (b_xcoord <= -975)
{
	layer_hspeed(bid, 0);
	audio_stop_sound(bgmusic);
	room_goto_next();
}