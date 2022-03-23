/// @description

// Environment
environment = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_environment, false, true);

// Moving
horizontal_speed += horizontal_acceleration * (horizontal_speed > 0 ? -1 : 1);
if (abs(horizontal_speed) <= abs(horizontal_acceleration)) {
	horizontal_speed = 0;
}
move_toward_x(self);

// Falling
if (hasGravity) {
	
	if (environment != noone) {
		var gravity_modificated = global.gravity + environment.vertical_speed_mod;
	}
	else {
		var gravity_modificated = global.gravity;
	}
	vertical_speed += gravity_modificated;
	
	move_toward_y(self);
}