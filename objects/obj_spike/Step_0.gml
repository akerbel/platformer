/// @description

if (activation_delay != -1) {
	if (alarm[3] == -1 && place_meeting(x, y, obj_player)) {
		alarm[3] = activation_delay;
	}

	if (alarm[4] == -1 && !place_meeting(x, y, obj_player)) {
		alarm[4] = activation_delay;
	}
}