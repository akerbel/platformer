// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flying_simple(object){

	with (object){
		x += lengthdir_x(speed_fly, image_angle);
		y += lengthdir_y(speed_fly, image_angle);
	}

}