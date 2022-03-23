/// @description 

var object_name = object_get_name(object_index);

if (!is_undefined(global.text[? object_name])) {
	name = global.text[? object_name][? "name"];
	description = global.text[? object_name][? "description"];
}
else {
	name = object_index;
	description = "";
}

// Disable items to fall through platforms.
jump_down = false;