instance_create_layer(mouse_x, mouse_y, "Instances", obj_target_recticle)

// 1. Get the tile layer ID
var layer_id = layer_get_id("Ground");

// 2. Get the tilemap ID
var tilemap_id = layer_tilemap_get_id(layer_id);

// 3. Get tilemap size
var tile_w = tilemap_get_tile_width(tilemap_id);
var tile_h = tilemap_get_tile_height(tilemap_id);

var map_w = tilemap_get_width(tilemap_id);
var map_h = tilemap_get_height(tilemap_id);

// 4. Loop through tiles
for (var tx = 0; tx < map_w; tx++)
{
    for (var ty = 0; ty < map_h; ty++)
    {
        var tile = tilemap_get(tilemap_id, tx, ty);

        if (tile != 0) {
            // Do something with this tile
            show_debug_message("Tile at (" + string(tx) + "," + string(ty) + ") = " + string(tile));
        }
    }
}