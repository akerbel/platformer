// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_x(object, toward_object){
	if (place_meeting(object.x + object.horizontal_speed, object.y, toward_object)) {
		while (!place_meeting(object.x + sign(object.horizontal_speed), object.y, toward_object)) {
			object.x = object.x + sign(object.horizontal_speed);
		}
		object.horizontal_speed = 0;
	}
	object.x += object.horizontal_speed;
}