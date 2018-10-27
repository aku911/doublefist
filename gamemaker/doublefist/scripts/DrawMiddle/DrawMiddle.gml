screen_x = view_xport[0];
screen_w = view_wport[0];
screen_x_middle = screen_x + screen_w / 2;

screen_y = view_yport[0];
screen_h = view_hport[0];
screen_y_middle = screen_y + screen_h / 2;

scale_x = argument1;
scale_y = argument1;
globe_width = sprite_get_width(argument0) * scale_x;
globe_height = sprite_get_height(argument0) * scale_y;

globe_x = screen_x_middle - globe_width / 2;
globe_y = screen_y_middle - globe_height / 2;


draw_sprite_ext(argument0, image_index, globe_x, globe_y, scale_x, scale_y, 0, c_white, 1);