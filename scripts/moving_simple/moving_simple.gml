// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moving_simple(enemy){
	with (enemy) {
		x = path_get_x(path_index, path_position);
		y = path_get_y(path_index, path_position);
		state = states.walk;
	}
}