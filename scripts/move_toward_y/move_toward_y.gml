// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_y(object){
	
	var tilemap = layer_tilemap_get_id("Collision");
	
	with (object) {
		
		var bbox_side;
		var collision_y = ceil(vertical_speed);
		
		if (vertical_speed > 0) bbox_side = bbox_bottom;
		else bbox_side = bbox_top;
		isGrounded = false;
		var p1 = (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + collision_y) == 1);
		var p2 = (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + collision_y) == 1);
			
		if (p1 || p2) {
			if (vertical_speed > 0)	y = y - (y mod TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);
			else y = y - (y mod TILE_SIZE) - (bbox_top - y);
			vertical_speed = 0;
			isGrounded = (y == yprevious);
		}

		// Standing on platform
		if (!jump_down && (y < y + vertical_speed)) {
			var platform = collision_rectangle(
				bbox_left, bbox_bottom, 
				bbox_right, bbox_bottom + sprite_height/4,
				obj_platform,
				false,
				true
			);

			if (platform != noone) {
				isGrounded = true;
				onPlatform = true;
				vertical_speed = 0;
				y = platform.bbox_top - sprite_height/2;
				x += platform.horizontal_speed;
			}
		}
		else {
			onPlatform = false;
		}

		y += vertical_speed;
		y = floor(y);

	}
}