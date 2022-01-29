/// @description 

if (path != noone) {
	path_start(path, speed_walk, path_action_reverse, true);
}

sprites[states.idle] = spr_goblin_archer_idle;
sprites[states.walk] = spr_goblin_archer_walk;
sprites[states.attack] = spr_goblin_archer_attack;

behavior = moving_simple;
action = action_idle;
actionPause = 120;
actionIsMade = false;
actionInProgress = false;