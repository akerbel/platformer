/// @description 

key_inventory_pressed = keyboard_check(vk_escape);

if (key_inventory_pressed) {
	instance_destroy();
}

// Cursor moving
if (keyboard_check_pressed(get_key_down())) {
	var new_cursor_pos = ds_map_find_next(inventory, inventory_cursor_pos);
	if (!is_undefined(new_cursor_pos)){
		if (inventory_cursor_pos == last_item) {
			last_item = new_cursor_pos;
			first_item = ds_map_find_next(inventory, first_item);
		}
		inventory_cursor_pos = new_cursor_pos;
	}
}
if (keyboard_check_pressed(get_key_up())) {
	var new_cursor_pos = ds_map_find_previous(inventory, inventory_cursor_pos);
	if (!is_undefined(new_cursor_pos)){
		if (inventory_cursor_pos == first_item) {
			first_item = new_cursor_pos;
			last_item = ds_map_find_previous(inventory, last_item);
		}
		inventory_cursor_pos = new_cursor_pos;
	}
}