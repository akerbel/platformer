/// @description

key_inventory_pressed = keyboard_check(get_key_inventory());

if (key_inventory_pressed){
	instance_create_layer(0, 0, "Windows", obj_inventory_window);
}