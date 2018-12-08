// First argument is the object who own's the sprite
owner = argument0;
// Second argument is the sprite
sprite = argument1;
// Third argument is the object we want to check for collision
collidewith = argument2;

xoffset = owner.x - (owner.image_xscale * sprite_get_xoffset(owner.sprite_index));
yoffset = owner.y - (owner.image_yscale * sprite_get_yoffset(owner.sprite_index));
left = (owner.image_xscale * sprite_get_bbox_left(sprite)) + xoffset;
right = (owner.image_xscale * sprite_get_bbox_right(sprite)) + xoffset;
bottom = (owner.image_yscale * sprite_get_bbox_bottom(sprite)) + yoffset;
top = (owner.image_yscale * sprite_get_bbox_top(sprite)) + yoffset;		

return collision_rectangle(left, top, right, bottom, collidewith, false, false);
