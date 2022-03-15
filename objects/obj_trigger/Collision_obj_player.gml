/// @description 

if (!instance_exists(obj_window)){
	instance_destroy();
	instance_create_layer(0, 0, "Windows", obj_window);
}