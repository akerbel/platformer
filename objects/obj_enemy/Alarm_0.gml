/// @description Removing "damaged" status.

event_inherited();

if (path != noone) {
	path_start(path, speed_walk, path_action_reverse, true);
	path_position = path_damage_position;
	path_speed = path_damage_speed;
}