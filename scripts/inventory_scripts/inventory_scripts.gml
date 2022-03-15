// Returns inventory map index.
function get_inventory(){
	return global.inventory;
}

// Add item instance to the inventory map.
function add_to_inventory(item)
{
	var inventory = get_inventory();
	
	if (ds_map_find_value(inventory, item.object_index)) {
		inventory[? item.object_index].count += item.count;
	}
	else {
		ds_map_add(inventory, item.object_index, item);
	}
}