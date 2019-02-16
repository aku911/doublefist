direction = point_direction(x, y, grandpa_for_shin.x, grandpa_for_shin.y);

if (speed > 0 && distance_to_object(grandpa_for_shin) <= 32) {
	speed = 0;
	image_index = 0;
	image_speed = 0;
	
	AddSubtitles(["I got a metal butt and I want your power. Mwaaa ha ha HA!"], 1);
}