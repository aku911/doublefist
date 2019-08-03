event_inherited();
vspeed = 0;
hspeed = 0;

// Center view on the player
//camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));

// Move backgrounds as we move
var _cam_x = camera_get_view_x(view_camera[0]);
layer_x("sky", _cam_x * 0.25); 
layer_x("mountains", _cam_x * 0.5); 


// Set a variable that means if we should change our current sprites
should_change_base = false;

// figure out if about to run into door
y_speed = gamepad_is_connected(gamepad) ? gamepad_axis_value(gamepad, gp_axislh) : 0;
x_speed = gamepad_is_connected(gamepad) ? gamepad_axis_value(gamepad, gp_axislv) : 0;
 

if (abs(x_speed) > 0.1 || abs(y_speed) > 0.1)
{
	// Start animating since we're moving
	image_speed = 1;

	if (abs(x_speed) > 0.1) vspeed = x_speed * 5;
	if (abs(y_speed) > 0.1) hspeed = y_speed * 5;
		
	should_change_base = true;
}
else
{
	image_speed = 0;
	image_index = 0;
}


// Use the right stick to compute the sprite index
var rightstick = gamepad_is_connected(gamepad) ? gamepad_axis_value(gamepad, gp_axisrh) : 0;

if (should_change_base) 
{
	self.direction_and_xscale = script_execute(ComputeDirectionAndScale);
}

local_direction = ds_list_find_value(self.direction_and_xscale, 0);
image_xscale = ds_list_find_value(self.direction_and_xscale, 1);
var old_punch_index = self.punch_index;
var new_punch_index = script_execute(ComputePunchIndex, rightstick);
var base_index_offset = rightstick > 0 ? 3 : 0;

switch (local_direction) 
{
	case "up":
	case "down":
		self.sprite_index = spr_down_array[base_index_offset + new_punch_index];
		break;


	case "left":
	case "right":
		if (rightstick < 0 && new_punch_index > 0) {
			// Always left when punching left
			image_xscale = -abs(image_xscale);
		} else if (rightstick > 0 && new_punch_index > 0) {
			// Always right when punching right
			image_xscale = abs(image_xscale);
		}
		self.sprite_index = spr_right_array[base_index_offset + new_punch_index];
		break;
}

// Adjust punch power if we're at the same
if (new_punch_index == 2) 
{
	self.punch_power = new_punch_index == 2 ? max(4, self.punch_power - 4) : self.max_punch_power;
	if (old_punch_index != 2) 
	{
		audio_play_sound(snd_waa, 0, false);
	}
}
else 
{
	self.punch_power = 0;
}

self.punch_index = new_punch_index;

script_execute(CollisionDude, dojo_wall);
script_execute(CollisionDude, wall);
script_execute(CollisionDude, collision);

if (place_meeting(x, y + vspeed, obj_inside_door)) 
{
	hspeed = 0;
	vspeed = 2;

	fade_layer = layer_get_id("fade_layer");
	fade_inst = layer_has_instance(fade_layer, objFader);
	if (((y + sprite_height / 2) > room_height) && !fade_inst) 
	{
		instance_create_layer(0, 0, layer_get_id("fade_layer"), objFader);
	}
}
if (place_meeting(x,y,mohawk) && !being_injured && self.punch_index < 2)
{
	being_injured = true;
	health_alpha = 1;
	health -= 2;
	alarm_set(0, room_speed * 3)
}

if (health <= 0) 
{
	instance_create_layer(0, 0, layer_get_id("fade_layer"), obj_death_fader);
}	

var tracking_player = instance_find(tracker_obj, 0)
if (tracking_player != noone) {
	tracking_player.sprite_index = sprite_index;
	tracking_player.image_index = image_index;
	tracking_player.image_xscale = image_xscale;
	tracking_player.image_yscale = image_yscale;
	tracking_player.vspeed = vspeed;
	tracking_player.hspeed = hspeed;
	
	if (vspeed == 0) {
		tracking_player.x = x;
	}
	if (hspeed == 0) {
		tracking_player.y = y;
	}
}