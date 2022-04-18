/// @description 

if (room != room_init) {
	draw_text_transformed_color(10, 10, 
		"LIVES: " + string(global.lives),
		3, 3, 0, c_white, c_white, c_white, c_white, 100
	);
	draw_text_transformed_color(10, 40, 
		"OXIGEN: " + string(ceil(global.oxigen / 60)),
		3, 3, 0, c_white, c_white, c_white, c_white, 100
	);
}
