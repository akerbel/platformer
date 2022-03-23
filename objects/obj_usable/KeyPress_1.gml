/// @description 

// Using
var key_use_pressed = keyboard_check_pressed(get_key_use());
if (key_use_pressed && place_meeting(x, y, obj_player)) {
	event_user(0);
}