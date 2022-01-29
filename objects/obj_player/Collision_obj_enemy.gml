/// @description

if (state != states.damaged) {
	global.lives -= other.damage;
	state = states.damaged;
	alarm[0] = 60;
	
	if (other.phy_position_x > phy_position_x) {
		damaged_jump_angle = 135;
	}
	else if (other.phy_position_x < phy_position_x) {
		damaged_jump_angle = 45;
	}
	else {
		damaged_jump_angle = 90;
	}
	physics_apply_impulse(
		phy_position_x,
		phy_position_y,
		lengthdir_x(10, damaged_jump_angle),
		lengthdir_y(10, damaged_jump_angle)
	);
}
