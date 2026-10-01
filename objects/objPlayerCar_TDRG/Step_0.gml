var cam = view_camera[0];

var cam_width  = camera_get_view_width(cam);
var cam_height = camera_get_view_height(cam);

if (!objGameController_TDRG.gamePaused)
{
	if (objGameController_TDRG.raceStarted)
	{
		if (keyboard_check(ord("W")))
		{
			if (move_speed < max_move_speed)
				move_speed += accelerator;
			else
				move_speed = max_move_speed;
		}
		else
		{
			if (move_speed > 0.0)
				move_speed -= accelerator;
			else
				move_speed = 0.0;
		}

		var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	
		x += h * 2;
	}

	if (x < 96 || x + sprite_width > 224)
	{
		accelerator = 0.0125;
		max_move_speed = 1.0;
	}
	else
	{
		accelerator = 0.05;
		max_move_speed = 6.0;
	}
	
	
	if (x < 0) x = 0;
	if (x > cam_width - sprite_width) x = cam_width - sprite_width;
	if (y < 0) y = 0;
	if (y > cam_height - sprite_height) y = cam_height - sprite_height;
}

