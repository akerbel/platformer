/// @description 

sprite_index = sprites[state];

if (state == states.damaged) {
	if (step % 2 == 1) {
		draw_self();
	}
}

else {
	draw_self();
}

//draw_text(x, y, string(jump_down));
