/// @description

step++;
if (step > room_speed) step = 0;

draw_sprite(sprite_index, state, x, y);

if (state == container_states.closed && step == 0) {
	part_particles_create(global.partSystem, 
		irandom_range(bbox_left, bbox_right), 
		irandom_range(bbox_top, bbox_bottom), 
		global.ptSpark,
		irandom_range(1, 3)
	);
}