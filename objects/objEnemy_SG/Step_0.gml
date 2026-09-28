shoot_timer += delta_time / 1000;

show_debug_message("Enemy " + string(id) + " timer: " + string(shoot_timer));

if (shoot_timer >= spawn_interval) 
{	
	var shoot_x = x + sprite_width / 2.0 - 5.0;
	var shoot_y = y + sprite_height - 20;
	
	instance_create_layer(shoot_x, shoot_y, "Main", objLaser2_SG);

    shoot_timer -= spawn_interval;
}

if (y > room_height) 
{
    instance_destroy();
}