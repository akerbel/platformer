/// @description 

if (path != noone) {
	path_start(path, speed_walk, path_action_reverse, true);
	path_action_position = 0;
	path_damage_position = 0;
	path_damage_speed = 0;
}

sprites[states.idle] = spr_goblin_archer_idle;
sprites[states.walk] = spr_goblin_archer_walk;
sprites[states.attack] = spr_goblin_archer_attack;
sprites[states.damaged] = spr_goblin_archer_damaged;

behavior = moving_simple;
action = action_idle;
actionPause = 120;
actionIsMade = false;
actionInProgress = false;