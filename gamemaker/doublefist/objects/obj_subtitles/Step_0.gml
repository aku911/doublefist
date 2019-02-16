if (step_index * text_speed >= 1) {
	draw_index ++;
	step_index = 0;
} else {
	step_index ++;
}

len = string_length(messages[message_index]);

if (draw_index == len) {
	waiting_for_a = true;
} else {
	message_draw = string_copy(messages[message_index], 0, draw_index);
}

if (message_index == message_end) {
	instance_destroy();
}
