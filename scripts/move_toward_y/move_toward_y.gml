// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_y(object, toward_object){
	if (place_meeting(object.x, object.y + object.vertical_speed, toward_object)) {
		while (!place_meeting(object.x, object.y + sign(object.vertical_speed), toward_object)) {
			object.y = object.y + sign(object.vertical_speed);
		}
		object.vertical_speed = 0;
	}
	object.y += object.vertical_speed;
}