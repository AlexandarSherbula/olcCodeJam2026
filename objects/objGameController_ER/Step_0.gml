var w = 672;
scroll_speed = 4;

enemy_spawn_timer += delta_time / 1000;
flying_enemy_spawn_timer += delta_time / 1000;

if (enemy_spawn_timer > 3000) 
{
	var random_enemy = choose(objBike_ER, objPoliceCar_ER);
	
    instance_create_layer(612, 272, "Instances", random_enemy);
    enemy_spawn_timer = 0;
}

if (flying_enemy_spawn_timer > 10000) 
{
    instance_create_layer(612, 128, "Instances", objFlyingVehicle_ER);
    flying_enemy_spawn_timer = 0;
}

// Move both layers left
layer_x("GroundA", layer_get_x("GroundA") - scroll_speed);
layer_x("GroundB", layer_get_x("GroundB") - scroll_speed);

// Wrap GroundA
if (layer_get_x("GroundA") <= -w) 
{
    layer_x("GroundA", w);
}

// Wrap GroundB
if (layer_get_x("GroundB") <= - 2 * w) 
{
    layer_x("GroundB", 0);
}