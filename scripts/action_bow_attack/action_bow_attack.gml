// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function action_bow_attack(enemy){
	with (enemy) {
		state = states.attack;
		var arrow = instance_create_layer(
			phy_position_x + lengthdir_x(sprite_width, image_angle), 
			phy_position_y + lengthdir_y(sprite_height, image_angle), 
			"Instances", 
			obj_arrow
		);
		arrow.image_angle = image_angle;
	}
}