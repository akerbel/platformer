/// @description 

event_inherited();

key_left_pressed =  keyboard_check(get_key_left());
key_right_pressed = keyboard_check(get_key_right());
key_down_pressed = keyboard_check(get_key_down());
key_jump_pressed = keyboard_check_pressed(get_key_jump());
key_attack_pressed = keyboard_check_pressed(get_key_attack());

if (state != states.damaged && state != states.attack) {

	// Moving
	if (key_left_pressed || key_right_pressed) {
		
		horizontal_speed += horizontal_acceleration * (key_left_pressed ? -1 : 1);
		if (environment != noone) {
			var speed_walk_modificated = speed_walk + environment.horizontal_speed_mod; 
		}
		else {
			var speed_walk_modificated = speed_walk;
		}
		if (abs(horizontal_speed) >= abs(speed_walk_modificated)) {
			horizontal_speed = speed_walk_modificated * (key_left_pressed ? -1 : 1);
		}

		direction = (key_left_pressed ? 180 : 0);
		if (isGrounded) {
			state = states.walk;
		}
	}

	// Jumping
	if (isGrounded == true && key_jump_pressed) {
		
		if (!key_down_pressed) {
			vertical_speed = -speed_jump;
			jump_down = false;
		}
		
		state = states.jump;
		isGrounded = false;
	}
	if (!onPlatform && yprevious > y) {
		state = states.jump;
	}
	else if (!onPlatform && yprevious < y) {
		state = states.fall;
	}
	else if ((isGrounded == true) && !(key_left_pressed || key_right_pressed)) {
		state = states.idle;
	}

	
	// Jumping down from platform
	if (key_down_pressed) {
		jump_down = true;
	}
	else {
		jump_down = false;
	}
	
	// Attacking
	if (key_attack_pressed) {
		state = states.attack;
		alarm[2] = 30;
	}
	
}

// Stopping
if (!key_left_pressed && !key_right_pressed) {
	//horizontal_speed = 0;
	horizontal_speed += horizontal_acceleration * (horizontal_speed > 0 ? -1 : 1);
	if (abs(horizontal_speed) <= abs(horizontal_acceleration)) {
		horizontal_speed = 0;
	}
}

// Attacking
if (state == states.attack) {
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

// Underwater
if (environment != noone) {
	global.oxigen += environment.oxigen_mod;
}
else if global.oxigen < global.max_oxigen {
	global.oxigen += 5;
}
else if global.oxigen > global.max_oxigen {
	global.oxigen = global.max_oxigen;
}