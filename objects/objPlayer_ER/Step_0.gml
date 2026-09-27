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

if (tileA != 0 || tileB != 0) 
{
    vspeed = 0;
    while (tilemap_get_at_pixel(GroundA, footX, y + sprite_height - 1) != 0 ||
           tilemap_get_at_pixel(GroundB, footX, y + sprite_height - 1) != 0) 
	{
        y -= 1;
    }
} 
else 
{
    y = nextY;
}