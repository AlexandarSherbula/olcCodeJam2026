if (keyboard_check_pressed(vk_space)) 
{
    vspeed = -15;
}

vspeed += gravity;

var nextY = y + vspeed;

var footX = x + sprite_width/2;
var footY = nextY + sprite_height;

var tmA = layer_tilemap_get_id("GroundA");
var tmB = layer_tilemap_get_id("GroundB");

var tileA = tilemap_get_at_pixel(tmA, footX, footY);
var tileB = tilemap_get_at_pixel(tmB, footX, footY);


if (tileA == 271 || tileB == 271) 
{
	vspeed = 0;
	
	// Don't move into the ground.
    // Find the tile row that was hit.
    var tileY = floor(footY / 16);

    y = tileY * 16 - sprite_height;
	
} 
else 
{
    y = nextY;
}