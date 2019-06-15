image_speed = 0;

sprite_index = spr_down_neutral;
image_index = 0;

image_xscale = 1;
image_yscale = 1;
max_health = 10;
health = max_health;

last_rightstick = 0;
direction_and_xscale = ds_list_create();
ds_list_add(direction_and_xscale, "down");
ds_list_add(direction_and_xscale, 1);
punch_index = 0;
punch_power = 0;
max_punch_power = 10;
being_injured = false;
health_alpha = 1;
spr_down_array[0] = spr_down_neutral;
spr_down_array[1] = spr_left_down_1;
spr_down_array[2] = spr_left_down_2;
spr_down_array[3] = spr_down_neutral;
spr_down_array[4] = spr_right_down_1;
spr_down_array[5] = spr_right_down_2;
spr_right_array[0] = spr_walking_right;
spr_right_array[1] = spr_walking_right_1;
spr_right_array[2] = spr_walking_right_2;
spr_right_array[3] = spr_walking_right;
spr_right_array[4] = spr_walking_right_1;
spr_right_array[5] = spr_walking_right_2;
gamepad = 0;