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

draw_text(x, y, string(x));

//show_debug_message( view_get_wport(0));
