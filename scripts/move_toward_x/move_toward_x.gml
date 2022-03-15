// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_x(object){
	
	with (object) {
		if (place_meeting(x + horizontal_speed, y, obj_collision)) {
			while (!place_meeting(x + sign(horizontal_speed), y, obj_collision)) {
				x = x + sign(horizontal_speed);
			}
			horizontal_speed = 0;
		}
		x += horizontal_speed;
	}
	
}