// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moving_simple(enemy){
	enemy.x = path_get_x(enemy.path_index, enemy.path_position);
	enemy.y = path_get_y(enemy.path_index, enemy.path_position);
	enemy.state = states.walk;
}