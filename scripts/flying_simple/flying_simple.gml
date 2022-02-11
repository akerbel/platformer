// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flying_simple(object){

	with (object){
		x += lengthdir_x(speed_fly, image_angle);
		y += lengthdir_y(speed_fly, image_angle);
		
		if (irandom_range(0, 100) > 75) {
			part_particles_create(global.partSystem, x, y, global.ptSmoke, 1);
		}
		
	}

}