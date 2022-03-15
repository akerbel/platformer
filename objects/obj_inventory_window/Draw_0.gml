/// @description

draw_self();

// Items
var xx = x + padding + ceil(slot_width / 2);
var yy = y + padding;
var item;
var item_name = "";
var i = 1;

draw_sprite(button_up_sprite, is_undefined(ds_map_find_previous(inventory, first_item)), xx, yy);
yy += sprite_get_height(button_up_sprite) + ceil(slot_height / 2);

for (var k = first_item; !is_undefined(k); k = ds_map_find_next(inventory, k)) {
	item = inventory[? k];
	draw_sprite(slot_sprite, 0, xx, yy);
	draw_sprite(item.sprite_index, 0, xx, yy);
	
	if (item.count > 1) {
		item_name = "(" + string(item.count) + ") " + item.name;
	}
	else {
		item_name = item.name;
	}
	draw_text(xx + slot_width + slot_padding, yy - ceil(slot_height / 2), item_name);
	
	// Cursor
	if (inventory_cursor_pos == k) {
		draw_sprite(inventory_cursor_sprite, 0, xx, yy);
	}
	
	yy += slot_height + slot_padding;
	i++;
	if (i > slot_max) {
		break;
	}
}
yy += sprite_get_height(button_down_sprite) - ceil(slot_height / 2);
draw_sprite(button_down_sprite, is_undefined(ds_map_find_next(inventory, last_item)), xx, yy);


if (inventory_size > 0){
	
	// Chosen item description.
	item = inventory[? inventory_cursor_pos];
	
	xx = x + ceil(width / 2) + padding;
	yy = y + padding;
	
	draw_sprite_stretched(
		description_sprite, 0, xx, yy, 
		ceil(width / 2) - padding * 2, 
		height - padding * 2
	);
	
	draw_sprite_stretched(item.sprite_index, 0, xx + ceil(width / 4), yy + description_icon_padding, slot_height * 2, slot_height * 2);
}

