/// @description

if (path != noone) {
	x = path_get_x(path_index, path_position);
	horizontal_speed = x - last_x;
	
	y = path_get_y(path_index, path_position);
	vertical_speed = y - last_y;
}

last_y = y;
last_x = x;