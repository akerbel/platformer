/// @description

// Inherit the parent event
event_inherited();

if (path != noone && state != states.damaged) {
	script_execute(behavior, self, action, actionPause);
}


// Show falling sprite
if ((state == states.jump) && (vertical_speed > 0)) {
	state = states.fall;
}