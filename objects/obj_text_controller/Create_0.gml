/// @description

var text = ds_map_create();

text[? "inventory"] = "Inventory";

text[? "obj_health_potion"] = ds_map_create();
text[? "obj_health_potion"][? "name"] = "Health Potion";
text[? "obj_health_potion"][? "description"] = "Restores your health";

text[? "obj_mana_potion"] = ds_map_create();
text[? "obj_mana_potion"][? "name"] = "Mana Potion";
text[? "obj_mana_potion"][? "description"] = "Restores your mana";

text[? "obj_double_jump_boots"] = ds_map_create();
text[? "obj_double_jump_boots"][? "name"] = "Boots Of Double Jump";
text[? "obj_double_jump_boots"][? "description"] = "Hit your heels and fly!";

global.text = text;