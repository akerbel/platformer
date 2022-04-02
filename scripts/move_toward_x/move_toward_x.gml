// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_x(object){
	
	var tilemap = layer_tilemap_get_id("Collision");
	with (object) {
		/*if (place_meeting(x + horizontal_speed, y, obj_collision)) {
			while (!place_meeting(x + sign(horizontal_speed), y, obj_collision)) {
				x = x + sign(horizontal_speed);
			}
			horizontal_speed = 0;
		}
		x += horizontal_speed;*/
		
		var bbox_side;
		if (horizontal_speed > 0) bbox_side = bbox_right;
		else bbox_side = bbox_left;
		var collision_x = horizontal_speed;
		if (abs(collision_x) < 1) collision_x = sign(collision_x);
		if ((tilemap_get_at_pixel(tilemap, bbox_side + collision_x, bbox_bottom) != 0) ||
			(tilemap_get_at_pixel(tilemap, bbox_side + collision_x, bbox_top) != 0))
		{
			if (horizontal_speed > 0) {
				x = floor(x);
				if ((x - (bbox_left - x)) mod tile_size != 0) x += 1;
			}
			else if (horizontal_speed < 0) {
				x = ceil(x);
				if ((x - (bbox_right - x) - 1) mod tile_size != 0) x -= 1;
			}
			
			horizontal_speed = 0;
		}
		x += horizontal_speed;
	}
	
}