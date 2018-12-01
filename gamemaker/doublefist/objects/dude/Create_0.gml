image_speed = 0;

sprite_index = spr_dude_walking;
image_index = 0;

image_xscale = 2;
image_yscale = 2;
max_health = 10;
health = max_health;

last_rightstick = 0;
direction_and_xscale = ds_list_create();
ds_list_add(direction_and_xscale, "down");
ds_list_add(direction_and_xscale, 2);
punch = spr_punch_right;
base = spr_dude_walking;
punch_index = 0;
punch_power = 0;
max_punch_power = 10;
being_injured = false;
health_alpha = 1;