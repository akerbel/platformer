/// @description Opening

state = container_states.opened;

for (var k = 0; k < ds_list_size(items); k++) {
	var item = instance_create_layer(x, y, "Instances", ds_list_find_value(items, k));
	
	item.vertical_speed = -item.speed_jump;
	item.horizontal_speed = random_range(-1, 1);
	item.isGrounded = false;
	item.depth = depth - 1;
}

ds_list_destroy(items);