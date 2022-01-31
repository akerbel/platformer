/// @description 

// Inherit the parent event
event_inherited();

behavior = moving_with_action;
action = action_jump;
actionPause = 40;

sprites[states.idle] = spr_goblin_jumper_idle;
sprites[states.walk] = spr_goblin_jumper_walk;
sprites[states.jump] = spr_goblin_jumper_jump;
sprites[states.fall] = spr_goblin_jumper_fall;
sprites[states.damaged] = spr_goblin_jumper_damaged;