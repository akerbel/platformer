/// @description 

event_inherited();

key_left_pressed = keyboard_check(ord("A"));
key_right_pressed = keyboard_check(ord("D"));
key_jump_pressed = keyboard_check_pressed(vk_space);

if (place_meeting(x, y + (sprite_height/2) + 1, obj_collision)) {
	isGrounded = true;
}
else {
	isGrounded = false;
}

if (state != states.damaged) {

	// Moving
	if (key_left_pressed || key_right_pressed) {
		phy_position_x += speed_walk * (key_left_pressed ? -1 : 1);
		// Disable rotating
		direction = (key_left_pressed ? 180 : 0);
		// Disable inertion
		phy_speed_x = 0;
		if (isGrounded) {
			state = states.walk;
		}
	}

	// Jumping
	if (isGrounded == true && key_jump_pressed) {
		physics_apply_impulse(
			phy_position_x,
			phy_position_y,
			lengthdir_x(speed_jump, 90),
			lengthdir_y(speed_jump, 90)
		);
	}
	
	if (last_phy_position_y - phy_position_y > 0.2) {
		state = states.jump;
	}
	else if (last_phy_position_y - phy_position_y < -0.2) {
		state = states.fall;
	}
	else if ((isGrounded == true) && !(key_left_pressed || key_right_pressed)) {
		state = states.idle;
	}
	
	last_phy_position_y = phy_position_y;
	
	
	if (device_mouse_check_button_released(0, mb_left)) {
		// Find character direction.
		var dir = point_direction(phy_position_x, phy_position_y, device_mouse_x(0), device_mouse_y(0));
		//dir = 45;
		var attack_x = phy_position_x;
		var attack_y = phy_position_y;
	
		attack_x += lengthdir_x(abs(sprite_width), dir);
		attack_y += lengthdir_y(abs(sprite_height), dir);
	
		var attack = instance_create_depth(attack_x, attack_y, -10, obj_arrow);
		
		with (attack) {
			//phy_fixed_rotation = true;
			phy_rotation = -dir;
			phy_speed_x = lengthdir_x(10, phy_rotation);
			phy_speed_y = lengthdir_y(10, phy_rotation);
			/*physics_apply_impulse(
				phy_position_x,
				phy_position_y,
				lengthdir_x(0.5, phy_rotation),
				lengthdir_y(0.5, phy_rotation)
			);*/
			
			
			show_debug_message(string(phy_rotation));
		}
	}
}


