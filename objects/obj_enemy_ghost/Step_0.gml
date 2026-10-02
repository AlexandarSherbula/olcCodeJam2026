var move_speed = 0

if (distance_to_object(obj_player) < 100.0)
	move_speed = 1.5;
else
	move_speed = 0;
	
move_towards_point(obj_player.x, obj_player.y, move_speed);


if (place_meeting(x, y, obj_magic_projectile))
	instance_destroy();
