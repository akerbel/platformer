/// @description

enum states {
	idle,
	walk,
	jump,
	fall,
	attack,
	damaged,
	dead
}

enum trap_states {
	deactivated,
	activated
}

enum container_states {
	closed,
	opened
}

#macro tile_size 16

global.gravity = 0.2;
global.lives = 3;
global.max_oxigen = 6000;
global.oxigen = global.max_oxigen;

global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);

var _p = part_type_create();
part_type_shape(_p, pt_shape_cloud);
part_type_life(_p, 15, 30);
part_type_alpha2(_p, 1, 0);
part_type_color2(_p, c_white, c_grey);
part_type_size(_p, 0.01, 0.05, 0.005, 0);
part_type_speed(_p, 0.1, 0.2, 0.001, 0);
part_type_direction(_p, 90, 180, 0, 0);
global.ptSmoke = _p;

var _spark = part_type_create();
part_type_sprite(_spark, spr_spark, true, true, false);
part_type_life(_spark, room_speed, room_speed);
//part_type_speed(_spark, 1, 1, 0, 0);
global.ptSpark = _spark;