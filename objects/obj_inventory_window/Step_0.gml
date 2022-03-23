/// @description 

key_inventory_pressed = keyboard_check(vk_escape);

if (key_inventory_pressed) {
	instance_destroy();
}

// Cursor moving
if (keyboard_check_pressed(get_key_right())) {
	var new_cursor_pos = ds_map_find_next(inventory, inventory_cursor_pos);
	if (!is_undefined(new_cursor_pos)){
		if (inventory_cursor_pos == last_item) {
			var new_last_item = move_inventory_forward(last_item, slot_row_max);
			if (last_item != new_last_item) {
				last_item = new_last_item;
				first_item = move_inventory_forward(first_item, slot_row_max);
			}
		}
		inventory_cursor_pos = new_cursor_pos;
	}
}
if (keyboard_check_pressed(get_key_left())) {
	var new_cursor_pos = ds_map_find_previous(inventory, inventory_cursor_pos);
	if (!is_undefined(new_cursor_pos)){
		if (inventory_cursor_pos == first_item) {
			var new_first_item = move_inventory_back(first_item, slot_row_max);
			if (first_item != new_first_item) {
				first_item = new_first_item;
				last_item = move_inventory_back(last_item, slot_row_max);
			}
		}
		inventory_cursor_pos = new_cursor_pos;
	}
}
if (keyboard_check_pressed(get_key_up())) {
	var new_cursor_pos = inventory_cursor_pos;
	for (var i = 1; i <= slot_row_max; i++) {
		new_cursor_pos = ds_map_find_previous(inventory, new_cursor_pos);
		if (!is_undefined(new_cursor_pos)){
			if (new_cursor_pos == first_item) {
				var new_first_item = move_inventory_back(first_item, slot_row_max);
				if (first_item != new_first_item) {
					first_item = new_first_item;
					last_item = move_inventory_back(last_item, slot_row_max);
				}
			}
			inventory_cursor_pos = new_cursor_pos;
		}
		else {
			break;
		}
	}
}
if (keyboard_check_pressed(get_key_down())) {
	var new_cursor_pos = inventory_cursor_pos;
	for (var i = 1; i <= slot_row_max; i++) {
		new_cursor_pos = ds_map_find_next(inventory, new_cursor_pos);
		if (!is_undefined(new_cursor_pos)){
			if (new_cursor_pos == last_item) {
				var new_last_item = move_inventory_forward(last_item, slot_row_max);
				if (last_item != new_last_item) {
					last_item = new_last_item;
					first_item = move_inventory_forward(first_item, slot_row_max);
				}
			}
			inventory_cursor_pos = new_cursor_pos;
		}
		else {
			break;
		}
	}
}
