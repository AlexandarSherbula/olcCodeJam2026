var move_speed = 0

if (distance_to_object(objPlayer_DC) < 100.0)
	move_speed = 1.5;
else
	move_speed = 0;
	
move_towards_point(objPlayer_DC.x, objPlayer_DC.y, move_speed);

if (place_meeting(x, y, objMagicProjectile_DC))
	instance_destroy();