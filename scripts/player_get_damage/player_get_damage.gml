// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_get_damage(player, object){
	
	if (!player.invulnarable) {
		global.lives -= object.damage;
		player.state = states.damaged;
		player.alarm[0] = 30;
		
		player.invulnarable = true;
		player.alarm[3] = 90;
	
		if (object.x > player.x) {
			player.horizontal_speed = -player.speed_walk;
		}
		else if (object.x < x) {
			player.horizontal_speed = player.speed_walk;
		}
	
		// jump
		player.vertical_speed = -player.speed_jump / 2;
	}
	
}