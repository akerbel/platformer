/// @description

if (direction >= 90 && direction <= 270) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}

// Moving
move_toward_x(self, obj_collision);

// Falling
if (hasGravity) {
	vertical_speed += global.gravity;
	move_toward_y(self, obj_collision);
}

