var bid = layer_get_id(argument0);
var music_id = argument1;
var fade_edge = argument3;

if (argument2 == "horizontal")
{
	var b_coord = abs(layer_get_x(bid));
	var edge = abs(view_wport[0] - room_width);
	var half_edge = edge / fade_edge;
}
else 
{
	var b_coord = abs(layer_get_y(bid));
	var edge = abs(view_hport[0] - room_height);
	var half_edge = edge / fade_edge;
}

var stopScrolling = (b_coord >= edge);
var startFading = (b_coord >= half_edge);

if (stopScrolling)
{
	if (argument2 == "horizontal") 
	{
		layer_hspeed(bid, 0);
	}
	else
	{
		layer_vspeed(bid, 0);
	}
	audio_stop_sound(music_id);
}
	
if (startFading && instance_number(objFader) == 0)
{
	in = instance_create_layer(0, 0, layer_get_id("fade_layer"), objFader);
	in.music = music_id;
}
