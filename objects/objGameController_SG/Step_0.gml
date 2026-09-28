spawn_interval = 1000; 

spawn_timer += delta_time / 1000;

if (keyboard_check_pressed(vk_space))
{
	room_goto(EndlessRunning);
}

if (spawn_timer >= spawn_interval) 
{
    var rand_x = irandom_range(0, room_width);
	instance_create_layer(rand_x, -50, "Main", objEnemy_SG);

    spawn_timer = 0; 
}