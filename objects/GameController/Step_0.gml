spawn_interval = 1000; 

spawn_timer += delta_time / 1000; // convert microseconds to ms

if (spawn_timer >= spawn_interval) 
{
    var rand_x = irandom_range(0, room_width);
	instance_create_layer(rand_x, -50, "Main", objEnemy);

    spawn_timer = 0; 
}