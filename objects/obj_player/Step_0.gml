/// @description 

event_inherited();

key_left_pressed = keyboard_check(ord("A"));
key_right_pressed = keyboard_check(ord("D"));
key_jump_pressed = keyboard_check_pressed(vk_space);
key_attack_pressed = keyboard_check_pressed(ord("F"));

if (place_meeting(x, y + (sprite_height/2) + 1, obj_collision)) {
	isGrounded = true;
}
else {
	isGrounded = false;
}

if (state != states.damaged && state != states.attack) {

	// Moving
	if (key_left_pressed || key_right_pressed) {
		horizontal_speed = speed_walk * (key_left_pressed ? -1 : 1);

		direction = (key_left_pressed ? 180 : 0);
		if (isGrounded) {
			state = states.walk;
		}
	}
	else {
		horizontal_speed = 0;
	}

	// Jumping
	if (isGrounded == true && key_jump_pressed) {
		vertical_speed = -speed_jump;
		state = states.jump;
		isGrounded = false;
	}
	if (last_y - y > 0.2) {
		state = states.jump;
	}
	else if (last_y - y < -0.2) {
		state = states.fall;
	}
	else if ((isGrounded == true) && !(key_left_pressed || key_right_pressed)) {
		state = states.idle;
	}
	last_y = y;
	
	// Attacking
	if (key_attack_pressed) {
		state = states.attack;
		alarm[2] = 30;
	}
	
}

// Attacking
if (state = states.attack) {
	var enemy = collision_rectangle(
		x, y - sprite_height/2, 
		x + (16/2 + weapon_distance) * image_xscale, y + sprite_height/2,
		obj_enemy,
		false,
		true
	);
	
	with (enemy) {
		if (state != states.damaged) {
			state = states.damaged;
			hp--;
			alarm[0] = 30;
			path_damage_position = path_position;
			path_damage_speed = path_speed;
			path_end();
		}
	}
}


