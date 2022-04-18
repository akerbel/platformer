/// @description 

sprite_index = sprites[state];

if (invulnarable) {
	if (step % 2 == 1) {
		draw_self();
	}
}

else {
	draw_self();
}

var tilemap = layer_tilemap_get_id("Collision");
//var pos = tilemap_get_at_pixel(tilemap, x, bbox_bottom);
//draw_text(x, y, string(TILE_SIZE - global.heights[(x mod TILE_SIZE) + (pos * TILE_SIZE)]));

draw_text(x, y, string(in_floor(tilemap, x, bbox_bottom + ceil(vertical_speed))));

//show_debug_message( view_get_wport(0));
