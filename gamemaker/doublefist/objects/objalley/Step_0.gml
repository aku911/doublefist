script_execute(MovingCutscene, "Background", noone, "vertical", 1.5);
if (!audio_is_playing(snd_desert_wind)) {
	audio_play_sound(snd_desert_wind, 0, 1);
}