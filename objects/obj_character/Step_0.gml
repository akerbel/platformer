/// @description

step++;

if (direction >= 90 && direction <= 270) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}

// Moving
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

// Environment
environment = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_environment, false, true);

