// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_y(object){
	
	object.isGrounded = false;
	if (place_meeting(object.x, object.y + object.vertical_speed, obj_collision)) {
		while (!place_meeting(object.x, object.y + sign(object.vertical_speed), obj_collision)) {
			object.y = object.y + sign(object.vertical_speed);
		}
		object.isGrounded = true;
		object.vertical_speed = 0;
	}
	
	// Standing on platform
	if (!object.jump_down &&
		(object.y < object.y + object.vertical_speed) &&
		collision_rectangle(
			object.bbox_left, object.bbox_bottom, 
			object.bbox_right, object.bbox_bottom + 0.1,
			obj_platform,
			false,
			true
		)) {
		object.isGrounded = true;
		object.vertical_speed = 0;
	}
	
	object.y += object.vertical_speed;
}