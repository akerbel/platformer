/// @description 

instance_deactivate_all(true);

padding = 8;

var camera = (view_get_camera(0)); 

width = camera_get_view_width(camera);
height = camera_get_view_height(camera);

x = camera_get_view_x(camera);
y = camera_get_view_y(camera);

image_xscale = width / sprite_width;
image_yscale = height / sprite_height;

inventory = get_inventory();
inventory_size = ds_map_size(inventory);

slot_padding = 4;
slot_sprite = spr_inventory_slot;
slot_height = sprite_get_height(slot_sprite);
slot_width = sprite_get_width(slot_sprite);

//slot_max = height div (slot_height + slot_padding);
slot_max = 12;
slot_row_max = 4;
// Find the first and the last item, visible on the first inventory "screen".
first_item = ds_map_find_first(inventory);
last_item = first_item;
for (var i = 1; i < slot_max; i++){
	var next_item = ds_map_find_next(inventory, last_item);
	if (is_undefined(next_item)) {
		break;
	}
	last_item = next_item;
}


button_up_sprite = spr_button_up;
button_down_sprite = spr_button_down;

inventory_cursor_pos = ds_map_find_first(inventory)
inventory_cursor_sprite = spr_inventory_cursor;

description_sprite = spr_inventory_description;
description_icon_padding = 20;