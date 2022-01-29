// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moving_with_action(enemy, action = action_idle, pause = 120){
	
	with (enemy) {
	
		// Do Action, if point 1 is reached.
		if (!actionIsMade && 
			!actionInProgress && 
			(floor(x) == floor(path_get_point_x(path_index, 1)))
		) {
			path_speed = 0;
			actionInProgress = true;
			alarm[1] = pause;
			script_execute(action, enemy);
		}
		
		// Move on path, if Action is not in progress.
		if (!actionInProgress) {
			x = path_get_x(path_index, path_position);
			y = path_get_y(path_index, path_position);
			state = states.walk;
		}
		
		// Renew Action status, if path is finished.
		if (floor(x) == floor(path_get_point_x(path_index, 0))) {
			actionIsMade = false;
		}
	
	}
	
	
}