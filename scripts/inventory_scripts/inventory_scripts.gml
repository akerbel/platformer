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

function move_inventory_forward(current, steps)
{
	var inventory = get_inventory();
	for (var i = 1; i <= steps; i++) {
		var assumed_step = ds_map_find_next(inventory, current);
		if (!is_undefined(assumed_step)) {
			current = assumed_step;
		}
		else {
			break;
		}
	}
	return current;
}

function move_inventory_back(current, steps)
{
	var inventory = get_inventory();
	for (var i = 1; i <= steps; i++) {
		var assumed_step = ds_map_find_previous(inventory, current);
		if (!is_undefined(assumed_step)) {
			current = assumed_step;
		}
		else {
			break;
		}
	}
	return current;
}