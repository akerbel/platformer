// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function action_jump(enemy){
	with (enemy) {
		vertical_speed = -speed_jump;
		state = states.jump;
	}
}