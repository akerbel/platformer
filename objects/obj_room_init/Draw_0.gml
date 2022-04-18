/// @description

draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_tilemap(tilemap_id, 0, 0);

for (var i = heights_to_get - 1; i >= 0; i--) {
	var check = 0;
	
	while (check <= TILE_SIZE) {
		global.heights[i] = check;
		if (check == TILE_SIZE) break;
		if (surface_getpixel(application_surface, i, check) != c_black) break;
		check++;
	}
}

room_goto_next();
