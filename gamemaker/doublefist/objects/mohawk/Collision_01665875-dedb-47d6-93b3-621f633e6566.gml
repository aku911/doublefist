if (speed != knockback_speed) {
	HP += -1;
}

// Knock our dude back
speed = knockback_speed;

// Punch sound
audio_play_sound(punch, 0, false);

if(HP <= 0)
{
	instance_destroy();
}

alarm_set(0, room_speed / 2);