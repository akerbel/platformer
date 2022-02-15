/// @description 

var yy = 0;

if (state == trap_states.activated) {
	yy = 0;
}
else if (state == trap_states.deactivated) {
	yy = sprite_height - 1;
}

for (var xx = 0; xx < image_xscale; xx += 3){
	draw_sprite(sprite_index, 0, x + xx, y + yy);
}
