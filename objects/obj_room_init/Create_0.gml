/// @description

heights_to_get = sprite_get_width(spr_collisions);
tiles = heights_to_get / TILE_SIZE;

var layer_id = layer_create(0, "Tiles");
tilemap_id = layer_tilemap_create(layer_id, 0, 0, tls_collisions, tiles, 1);

for (var i = 0; i <= tiles; i++) {
	tilemap_set(tilemap_id, i, i, 0);
}
