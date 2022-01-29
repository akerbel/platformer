// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function action_bow_attack(enemy){
	with (enemy) {
		state = states.attack;
		var arrow = instance_create_layer(
			x + lengthdir_x(sprite_width /2, image_angle), 
			y + lengthdir_y(sprite_height /2, image_angle), 
			"Instances", 
			obj_arrow
		);
		arrow.image_angle = image_angle;
	}
}