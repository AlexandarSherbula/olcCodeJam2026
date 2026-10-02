spawn_timer += delta_time / 1000;

if (spawn_timer >= 5000)
{
	var rand_x = irandom_range(1, 30);
	var rand_y = irandom_range(2, 16);
	
	instance_create_layer(rand_x * 16, rand_y * 16, "Instances", objGhost_DC);
	
	spawn_timer = 0;
}