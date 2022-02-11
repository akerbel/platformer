/// @description

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
	vertical_speed += global.gravity;
	move_toward_y(self);
}



