// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_y(object){
	/*
	object.isGrounded = false;
	if (place_meeting(object.x, object.y + object.vertical_speed, obj_collision)) {
		while (!place_meeting(object.x, object.y + sign(object.vertical_speed), obj_collision)) {
			object.y = object.y + sign(object.vertical_speed);
		}
		object.isGrounded = true;
		object.vertical_speed = 0;
	}
	
	// Standing on platform
	if (!object.jump_down && (object.y < object.y + object.vertical_speed)) {
		
		var platform = collision_rectangle(
			object.bbox_left, object.bbox_bottom, 
			object.bbox_right, object.bbox_bottom + object.sprite_height/4,
			obj_platform,
			false,
			true
		);
		
		if (platform != noone) {
			object.isGrounded = true;
			object.onPlatform = true;
			object.vertical_speed = 0;
			object.y = platform.bbox_top - object.sprite_height/2;
			object.x += platform.horizontal_speed;
		}
	}
	else {
		object.onPlatform = false;
	}
	
	object.y += object.vertical_speed;*/
	
	var tilemap = layer_tilemap_get_id("Collision");
	
	with (object) {
		
		var bbox_side;
		if (vertical_speed > 0) bbox_side = bbox_bottom;
		else bbox_side = bbox_top;
		isGrounded = false;
		var collision_y = ceil(vertical_speed);
		if ((tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + collision_y) != 0) ||
			(tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + collision_y) != 0))
		{
			if (vertical_speed > 0)	y = y - (y mod tile_size) + (tile_size - 1) - (bbox_bottom - y);
			else y = y - (y mod tile_size) - (bbox_top - y);
			
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